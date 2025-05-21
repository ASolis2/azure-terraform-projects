
# Azure Terraform Projects

This repository showcases real-world Terraform infrastructure projects deployed in a simulated and live Azure environment using WSL and CLI tools. Each project is organized with proper structure, tested using `terraform plan`, and stored in separate GitHub branches for clarity and versioning.

## 🔧 Tools Used
- Terraform CLI (v1.12.1)
- Azure Resource Manager (simulated locally)
- WSL + Ubuntu Terminal
- GitHub CLI + Git Version Control

## 📁 Project Structure
Each project is structured into:
- `main.tf` – core infrastructure logic
- `variables.tf` – configurable inputs
- `outputs.tf` – key results returned from resources
- `provider.tf` – required providers and backend
- `README.txt` – explanation of what each project does
- `screenshots/` – embedded Terraform plan results

## 🚀 Projects

- [Project 22 – PostgreSQL Basic](https://github.com/ASolis2/azure-terraform-projects/tree/project-22)  
  Deploys a basic PostgreSQL Server in Azure (simulated plan)

- [Project 23 – PostgreSQL Public Access](https://github.com/ASolis2/azure-terraform-projects/tree/project-23)  
  Adds public network firewall rules to PostgreSQL (simulated plan)

## 📌 Goals
- Demonstrate clean Terraform structure and branching
- Simulate real-world Azure deployments locally for learning and practice
- Build a strong DevOps/Cloud portfolio with public GitHub documentation

## 🧠 Next Steps
Coming soon:
- Project 24 – Private Networking PostgreSQL
- Project 25 – Geo-Redundant PostgreSQL
- Project 26 – PostgreSQL Advanced Security

---

🧠 Built and documented with hands-on learning, best practices, and job-readiness in mind.

