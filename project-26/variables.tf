variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "pg-rg-advanced"
}

variable "server_name" {
  default = "pg-adv-secure"
}

variable "admin_username" {
  default = "pgadminuser"
}

variable "admin_password" {
  default = "SuperSecure123!"
}

variable "allowed_ip" {
  description = "Specific IP address allowed through the firewall"
  default     = "203.0.113.5"
}

