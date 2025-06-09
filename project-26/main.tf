resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "pg" {
  name                   = var.postgresql_server_name
  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  sku_name               = "GP_Standard_D2s_v3"
  version                = "13"
  storage_mb             = 32768
  backup_retention_days  = 7

  maintenance_window {
    day_of_week  = 0
    start_hour   = 0
    start_minute = 0
  }

  authentication {
    active_directory_auth_enabled = false
    password_auth_enabled         = true
  }

  tags = {
    environment = "dev"
  }
}

/*
# Simulated Advanced Security (disabled for now due to invalid resource ID)

resource "azurerm_monitor_diagnostic_setting" "simulated_advsec" {
  name                       = "advsec-monitor"
  target_resource_id         = azurerm_postgresql_flexible_server.pg.id
  log_analytics_workspace_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/placeholder/providers/microsoft.operationalinsights/workspaces/placeholder"

  enabled_log {
    category = "PostgreSQLLogs"

    retention_policy {
      enabled = false
    }
  }
}
*/

