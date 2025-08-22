# =============================================================================
# TERRAFORM OUTPUTS
# Shows important information after resources are created
# =============================================================================

output "user_name" {
  description = "Name of the created IAM user"
  value       = aws_iam_user.readonly_user.name
}

output "user_arn" {
  description = "ARN of the created IAM user"
  value       = aws_iam_user.readonly_user.arn
}

output "access_key_id" {
  description = "Access Key ID for the IAM user"
  value       = aws_iam_access_key.readonly_user_key.id
}

output "secret_access_key" {
  description = "Secret Access Key for the IAM user"
  value       = aws_iam_access_key.readonly_user_key.secret
  sensitive   = true
}

output "policy_name" {
  description = "Name of the S3 read-only policy"
  value       = aws_iam_policy.s3_readonly_policy.name
}

output "policy_arn" {
  description = "ARN of the S3 read-only policy"
  value       = aws_iam_policy.s3_readonly_policy.arn
}

output "aws_console_login_url" {
  description = "URL to login to AWS Console (user needs password set separately)"
  value       = "https://${data.aws_caller_identity.current.account_id}.signin.aws.amazon.com/console"
}

# Get current AWS account information
data "aws_caller_identity" "current" {}
