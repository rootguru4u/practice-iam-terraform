# =============================================================================
# MAIN TERRAFORM CONFIGURATION
# Creates a simple IAM user with read-only S3 access
# Perfect for learning Terraform and AWS IAM basics!
# =============================================================================

# Create an IAM user
resource "aws_iam_user" "readonly_user" {
  name = var.username
  path = "/"

  tags = {
    Purpose     = "Learning Terraform"
    Environment = var.environment
    Project     = "practice-iam-terraform"
  }
}

# Create access keys for the user (for programmatic access)
resource "aws_iam_access_key" "readonly_user_key" {
  user = aws_iam_user.readonly_user.name
}

# Create a policy that allows read-only access to S3
resource "aws_iam_policy" "s3_readonly_policy" {
  name        = "${var.username}-s3-readonly"
  description = "Policy that allows read-only access to S3 buckets"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:GetObject",
          "s3:GetObjectVersion",
          "s3:ListBucket",
          "s3:ListAllMyBuckets",
          "s3:GetBucketLocation"
        ]
        Resource = [
          "arn:aws:s3:::*",
          "arn:aws:s3:::*/*"
        ]
      }
    ]
  })

  tags = {
    Purpose     = "Learning Terraform"
    Environment = var.environment
    Project     = "practice-iam-terraform"
  }
}

# Attach the policy to the user
resource "aws_iam_user_policy_attachment" "readonly_user_policy_attachment" {
  user       = aws_iam_user.readonly_user.name
  policy_arn = aws_iam_policy.s3_readonly_policy.arn
}
