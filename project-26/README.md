# Project 26: Azure PostgreSQL with Advanced Security (Simulated)

This project simulates deploying a secure PostgreSQL Flexible Server in Azure using Terraform. It focuses on private-only access and advanced network controls.

---

## 🔐 Key Features

- 🚫 No public access (`public_network_access_enabled = false`)
- 🌐 VNet and subnet integration
- 🔥 Single IP firewall rule using `azurerm_postgresql_flexible_server_firewall_rule`
- 🛠️ Simulated only using `terraform plan`

---

## 📸 Screenshot

Terraform plan output:  
![Terraform Plan Output](./screenshots/terraform-plan.png)

---

*Built and documented with job-readiness and secure deployment practices in mind.*
