Project 25 - Azure Geo-Redundant PostgreSQL (Simulated)

Overview:
----------
This project simulates a geo-redundant PostgreSQL deployment across two Azure regions
using Terraform. It provisions two PostgreSQL Flexible Servers — one in East US (primary),
one in Central US (secondary) — to mimic a disaster recovery or high-availability architecture.

Key Features:
-------------
- Two Azure resource groups (primary and secondary)
- Primary PostgreSQL Flexible Server with zone redundancy
- Secondary PostgreSQL server mimicking replication (not actually syncing)
- Terraform-based Infrastructure as Code (IaC)
- Screenshot from terraform plan below

Commands Used:
--------------
terraform init  
terraform plan  

Screenshot:
-----------
![Terraform Plan](./screenshots/terraform-plan.png)

