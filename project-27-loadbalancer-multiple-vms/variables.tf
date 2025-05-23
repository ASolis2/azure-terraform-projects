variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "rg-lb-multiple-vms"
}

variable "location" {
  description = "Azure region to deploy resources into"
  type        = string
  default     = "eastus"
}

