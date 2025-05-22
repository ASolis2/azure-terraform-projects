
# Project 26: Azure PostgreSQL with Advanced Security (Simulated)

This project simulates deploying a secure PostgreSQL Flexible Server in Azure using Terraform. It focuses on advanced security practices by restricting public access and using VNet integration.

---

## Features

- 🚫 Public network access disabled
- 🌐 Integrated with a private Virtual Network and Subnet
- 🔥 Firewall rule allowing access from a single IP
- 🧪 Fully simulated with `terraform plan` only
- 📤 Outputs server name and network mode

---

## Terraform Resources

- `azurerm_postgresql_flexible_server`
- `azurerm_virtual_network`
- `azurerm_subnet`
- `azurerm_postgresql_flexible_server_firewall_rule`
- `azurerm_resource_group`

---

## Screenshot

Below is the output from `terraform plan`:

![Terraform Plan Output](./screenshots/terraform-plan.PNG)

---

*Built and documented with job-readiness and secure deployment practices in mind.*

