output "lb_arn" {
  value = aws_lb.app_lb.arn
}

output "lb_dns_name" {
  value = aws_lb.app_lb.dns_name
}


output "oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.github.arn
}

output "github_actions_role_arn" {
  value = aws_iam_role.github_actions_role.arn
}


output "cluster_id" {
  value = module.eks.cluster_id
}

output "node_group_name" {
  value = aws_eks_node_group.node_group.id
}


output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}