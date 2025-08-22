# =============================================================================
# TERRAFORM CONFIGURATION
# Defines providers and backend configuration
# =============================================================================

terraform {
  # Specify minimum Terraform version
  required_version = ">= 1.0"

  # Configure Terraform Cloud as the backend for state management
  cloud {
    organization = "rootguru-infotech" # Replace with your TFC organization

    workspaces {
      name = "practice-iam-terraform" # practice-iam-terraform
    }
  }

  # Required providers
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.aws_region

  # Default tags applied to all resources
  default_tags {
    tags = {
      ManagedBy   = "Terraform"
      Project     = "practice-iam-terraform"
      Environment = var.environment
    }
  }
}
