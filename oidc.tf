# Create an OIDC provider for GitHub Actions
resource "aws_iam_openid_connect_provider" "github" {
  url = "https://token.actions.githubusercontent.com"

  client_id_list = [
    "sts.amazonaws.com"
  ]

  thumbprint_list = [
    # GitHub OIDC provider thumbprint
    "6938fd4d98bab03faadb97b34396831e3780aea1"
  ]
}

# IAM Role for GitHub Actions
resource "aws_iam_role" "github_actions_role" {
  name = "GitHubActionsRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.github.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "token.actions.githubusercontent.com:sub" : "repo:<GitHub-Org>/<GitHub-Repo>:ref:refs/heads/<Branch-Name>"
          }
        }
      },
    ]
  })

  managed_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess",
    "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy",
  ]
}

# Outputs
output "github_actions_role_arn" {
  value = aws_iam_role.github_actions_role.arn
}