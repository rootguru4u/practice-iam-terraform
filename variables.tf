# =============================================================================
# TERRAFORM VARIABLES
# Configure these settings to customize your IAM setup
# =============================================================================

variable "username" {
  description = "Name of the IAM user to create"
  type        = string
  default     = "john-readonly"

  validation {
    condition     = can(regex("^[a-zA-Z0-9+=,.@_-]+$", var.username))
    error_message = "Username must contain only alphanumeric characters and +=,.@_- symbols."
  }
}

variable "environment" {
  description = "Environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be one of: dev, staging, prod."
  }
}

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}
