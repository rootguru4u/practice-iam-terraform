# =============================================================================
# TERRAFORM VARIABLES EXAMPLE
# Copy this file to terraform.tfvars and customize the values
# =============================================================================

# Name of the IAM user to create
# Should be descriptive and follow your naming convention
username = "john-readonly"

# Environment where this will be deployed
# Options: dev, staging, prod
environment = "dev"

# AWS region where resources will be created
# Common options: us-east-1, us-west-2, eu-west-1
aws_region = "us-east-1"

# =============================================================================
# SETUP INSTRUCTIONS:
# 
# 1. Copy this file: cp terraform.tfvars.example terraform.tfvars
# 2. Edit terraform.tfvars with your specific values
# 3. Make sure terraform.tfvars is in .gitignore (it is!)
# 4. Configure AWS credentials in Terraform Cloud, not here!
# 
# SECURITY NOTE:
# Never put AWS credentials in any .tfvars file!
# Use Terraform Cloud environment variables instead.
# =============================================================================
