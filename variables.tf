variable "resource_group_name" {
  default = "rg-postgres-geo"
}

variable "postgresql_admin_username" {
  default = "psqladmin"
}

variable "postgresql_admin_password" {
  description = "The password for the PostgreSQL admin"
  sensitive   = true
}

variable "postgresql_version" {
  default = "13"
}

variable "sku_name" {
  default = "GP_Standard_D4s_v3"
}

