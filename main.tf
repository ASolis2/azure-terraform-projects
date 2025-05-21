resource "azurerm_resource_group" "primary" {
  name     = var.resource_group_name
  location = var.primary_location
}

resource "azurerm_resource_group" "secondary" {
  name     = "${var.resource_group_name}-dr"
  location = var.secondary_location
}

resource "random_integer" "unique" {
  min = 10000
  max = 99999
}

resource "azurerm_postgresql_flexible_server" "primary" {
  name                   = "psql-primary-${random_integer.unique.result}"
  location               = azurerm_resource_group.primary.location
  resource_group_name    = azurerm_resource_group.primary.name
  administrator_login    = var.postgresql_admin_username
  administrator_password = var.postgresql_admin_password
  version                = var.postgresql_version
  zone                   = "1"
  sku_name               = var.sku_name
  storage_mb             = 32768

  high_availability {
    mode = "ZoneRedundant"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "azurerm_postgresql_flexible_server" "replica" {
  name                   = "psql-secondary-${random_integer.unique.result}"
  location               = azurerm_resource_group.secondary.location
  resource_group_name    = azurerm_resource_group.secondary.name
  administrator_login    = var.postgresql_admin_username
  administrator_password = var.postgresql_admin_password
  version                = var.postgresql_version
  zone                   = "1"
  sku_name               = var.sku_name
  storage_mb             = 32768

  depends_on = [azurerm_postgresql_flexible_server.primary]

  lifecycle {
    prevent_destroy = true
  }
}

