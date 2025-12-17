# Azure Enterprise Landing Zone (Terraform)

## Overview
This repository is an **enterprise-grade Azure Landing Zone** built using **Terraform**, aligned with real-world cloud governance, security, and operational best practices.

The design follows a **hub-and-spoke network architecture**, centralised security controls, and environment separation (Dev / Prod), suitable for enterprise and regulated workloads.

## Architecture Highlights
- Hub-Spoke Virtual Network design
- Centralised logging and monitoring
- Secure-by-default network configuration
- Azure Policy enforcement
- Role-Based Access Control (RBAC)
- Environment isolation using Terraform workspaces / folders

## Technology Stack
- Microsoft Azure
- Terraform
- Azure Virtual Networks (VNet)
- Network Security Groups (NSG)
- Azure Policy
- Log Analytics
- Azure RBAC

## Repository Structure
azure-enterprise-landing-zone/
├── README.md
├── architecture/
│   ├── hub-spoke.png
│   └── landing-zone-overview.png
├── environments/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   └── prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── backend.tf
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── identity/
│   │   ├── main.tf
│   │   └── variables.tf
│   ├── security/
│   │   ├── nsg.tf
│   │   ├── policy.tf
│   │   └── variables.tf
│   ├── monitoring/
│   │   └── log-analytics.tf
│   └── compute/
│       └── vm.tf
├── policies/
│   └── allowed-locations.json
├── scripts/
│   └── bootstrap.ps1
└── .gitignore

