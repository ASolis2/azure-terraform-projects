resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "pg-vnet-adv"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "pg-subnet-adv"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_postgresql_flexible_server" "postgresql" {
  name                   = var.server_name
  resource_group_name    = azurerm_resource_group.rg.name
  location               = var.location
  version                = "13"
  delegated_subnet_id    = azurerm_subnet.subnet.id
  private_dns_zone_id    = null
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  sku_name               = "B_Standard_B1ms"
  storage_mb             = 32768
  backup_retention_days  = 7
  geo_redundant_backup_enabled = false
  public_network_access_enabled = false
  zone                   = "1"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_ip" {
  name      = "AllowSpecificIP"
  server_id = azurerm_postgresql_flexible_server.postgresql.id
  start_ip_address = var.allowed_ip
  end_ip_address   = var.allowed_ip
}

