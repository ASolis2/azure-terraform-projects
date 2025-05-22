output "postgresql_server_name" {
  value = azurerm_postgresql_flexible_server.postgresql.name
}

output "network_mode" {
  value = "Private (No Public IP)"
}

