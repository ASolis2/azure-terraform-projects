output "public_ip_address" {
  description = "The public IP address of the load balancer"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_private_ips" {
  description = "Private IP addresses of the backend VMs"
  value       = [for nic in azurerm_network_interface.nic : nic.private_ip_address]
}

