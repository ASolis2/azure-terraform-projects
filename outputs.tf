output "primary_server_name" {
  value = azurerm_postgresql_flexible_server.primary.name
}

output "secondary_server_name" {
  value = azurerm_postgresql_flexible_server.replica.name
}

