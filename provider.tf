provider "azurerm" {
  features {}
}

variable "primary_location" {
  default = "eastus"
}

variable "secondary_location" {
  default = "centralus"
}

