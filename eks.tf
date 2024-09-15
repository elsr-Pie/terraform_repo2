module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version
  subnet_ids      = var.subnets
  vpc_id          = var.vpc_id
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = module.eks.cluster_id
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn
  subnet_ids      = var.subnets

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
} 