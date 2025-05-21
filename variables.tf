variable "location" {
  type    = string
  default = "East US"
}

variable "resource_group_name" {
  type    = string
  default = "postgresql-rg"
}

variable "postgres_server_name" {
  type    = string
  default = "pgserverbasicdemo"
}

variable "admin_username" {
  type    = string
  default = "pgadminuser"
}

variable "admin_password" {
  type    = string
  default = "P@ssword1234!"
}

variable "sku_name" {
  type    = string
  default = "B_Gen5_1"
}

