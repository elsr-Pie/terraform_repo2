# terraform_repo2
# Terraform Infrastructure Setup

This repository contains Terraform configurations to set up the following infrastructure components in AWS:

- Networking (VPC with subnets, internet gateway, NAT gateways)
- EKS Cluster (with node groups)
- Load Balancer (with listeners and security groups)
- Optional: OIDC provider for GitHub Actions

## Prerequisites

- Terraform installed
- AWS CLI configured

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/elsr-Pie/terraform_repo2.git

This repository contains Terraform configurations to set up the following infrastructure components in AWS:

- Networking (VPC with subnets, internet gateway, NAT gateways)
- EKS Cluster (with node groups)
- Load Balancer (with listeners and security groups)
- Optional: OIDC provider for GitHub Actions

## Prerequisites

- Terraform installed
- AWS CLI configured

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/elsr-Pie/terraform_repo2.git
   cd terraform_repo2
2. Check for the terraform.tfvars file and make changes to the variables you wish to change. 
3. ⁠Run terraform init 
4. ⁠run terraform plan 
5. ⁠run terraform apply
