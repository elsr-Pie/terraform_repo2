# VPC configuration
vpc_cidr = "10.0.0.0/16"

# Public and private subnet CIDRs
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]

# Availability zones
azs = ["us-east-1a", "us-east-1b"]

# Load balancer details
lb_name = "my-lb"
subnets1 = ["subnet-12345678", "subnet-23456789"]
vpc_id1 = "vpc-123abc45"

# Target group for load balancer
target_group_name = "app-tg"

# EKS cluster configuration
cluster_name = "my-eks-cluster"
cluster_version = "1.21"
subnets = ["subnet-12345678", "subnet-23456789"]
vpc_id = "vpc-123abc45"

# Node group details
node_group_name = "my-node-group"
node_role_arn = "arn:aws:iam::123456789012:role/EKSNodeGroupRole"