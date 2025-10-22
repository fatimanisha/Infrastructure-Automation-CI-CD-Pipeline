# Infrastructure Automation CI/CD Pipeline

This project implements an automated infrastructure deployment pipeline using Azure DevOps and Terraform. It provides a streamlined approach to infrastructure as code (IaC) with continuous integration and continuous deployment capabilities.

## Introduction

This repository contains the necessary configuration and code to:
- Automate infrastructure provisioning using Terraform
- Implement CI/CD pipelines using Azure Pipelines
- Maintain infrastructure state and version control
- Enable consistent and repeatable infrastructure deployments

## Getting Started

### Prerequisites

- Azure subscription
- Azure DevOps account
- Terraform (latest version)
- Azure CLI
- Git

### Installation

1. Clone this repository:
```powershell
git clone https://github.com/fatimanisha/Infrastructure-Automation-CI-CD-Pipeline.git
```

2. Configure Azure credentials:
- Set up a service principal in Azure
- Configure the credentials in Azure DevOps

3. Initialize Terraform:
```powershell
cd terraform
terraform init
```

## Project Structure

- `azure-pipelines.yml` - Contains the CI/CD pipeline configuration
- `deployment.yml` - Kubernetes deployment configuration
- `terraform/` - Infrastructure as Code files
  - `main.tf` - Main Terraform configuration
  - `terraform.tfstate` - Terraform state file

## Build and Deploy

The project uses Azure Pipelines for automated builds and deployments. The pipeline is configured to:
1. Validate Terraform configurations
2. Plan infrastructure changes
3. Apply changes after approval
4. Deploy applications if specified

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
