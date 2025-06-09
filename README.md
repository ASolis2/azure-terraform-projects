# Project 27 – Azure Load Balancer with Multiple VMs (Simulated)

This branch demonstrates a simulated deployment of a public-facing Azure Load Balancer that distributes HTTP traffic to two backend Linux virtual machines (VMs). It includes virtual networking, public IP, health probes, load balancing rules, and a backend pool.

> **Note:** This is a **simulated** Terraform project. No actual Azure resources are created or billed.

---

## Key Components

- Resource Group  
- Virtual Network, Subnet  
- Network Security Group (Allow HTTP)  
- Azure Public IP (Static)  
- Azure Load Balancer (Standard)  
  - Backend Address Pool  
  - HTTP Health Probe  
  - Load Balancing Rule  
- 2 Simulated Linux VMs (no actual VM resources created)

---

## Screenshot (Validation Only)

![Terraform Validate](./project-27-loadbalancer-multiple-vms/screenshots/terraform-validate.png)

---

## Notes

- Terraform is run in `validate` mode to simulate deployment  
- Credentials and cloud access are not required  

