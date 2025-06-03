output "app_gateway_public_ip" {
  description = "Public IP address of the Azure Application Gateway"
  value       = azurerm_public_ip.appgw_ip.ip_address
}

output "backend_vm_private_ips" {
  description = "Private IPs of the backend VMs"
  value = [
    azurerm_network_interface.nic[0].private_ip_address,
    azurerm_network_interface.nic[1].private_ip_address
  ]
}
