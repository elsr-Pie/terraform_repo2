module "vpc" {
  source               = "../../vpc.tf"
  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.3.0/24", "10.0.4.0/24"]
  azs                  = ["us-east-1a", "us-east-1b"]
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

module "eks" {
  source          = "../../eks.tf"
  cluster_name    = "my-eks-cluster"
  cluster_version = "1.21"
  subnets         = module.vpc.public_subnets
  vpc_id          = module.vpc.vpc_id
  node_group_name = "my-node-group"
  node_role_arn   = aws_iam_role.eks_node_role.arn
}

output "cluster_id" {
  value = module.eks.cluster_id
}

output "node_group_name" {
  value = module.eks.node_group_name
}


module "load_balancer" {
  source            = "../../load_balancer.tf"
  lb_name           = "my-load-balancer"
  subnets           = module.vpc.public_subnets
  vpc_id            = module.vpc.vpc_id
  target_group_name = "my-target-group"
}

output "lb_arn" {
  value = module.load_balancer.lb_arn
}

output "lb_dns_name" {
  value = module.load_balancer.lb_dns_name
}


module "oidc" {
  source     = "../../oidc.tf"
  thumbprint = "<your_thumbprint_here>"
}

output "oidc_provider_arn" {
  value = module.oidc.oidc_provider_arn
}

output "github_actions_role_arn" {
  value = module.oidc.github_actions_role_arn
}




