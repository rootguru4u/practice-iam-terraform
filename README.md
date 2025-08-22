# Practice IAM Terraform - Beginner Friendly 🚀

A simple, beginner-friendly Terraform project that teaches you how to manage AWS IAM resources using modern DevOps practices.

## 🎯 What You'll Learn
- **Terraform fundamentals** with real AWS resources
- **AWS IAM basics** (users, policies, roles)
- **GitHub Actions CI/CD** for automated deployments
- **Terraform Cloud** for state management
- **Professional DevOps workflow**

## 📁 Project Structure
```
practice-iam-terraform/
├── main.tf                      # Creates IAM user with read-only S3 access
├── variables.tf                 # Configurable settings
├── outputs.tf                   # Shows what was created
├── terraform.tf                 # Provider and backend setup
├── .gitignore                   # Protects sensitive files
├── terraform.tfvars.example     # Sample configuration
└── .github/workflows/
    └── terraform.yml            # Automated deployment
```

## 🚀 The Magic Workflow
```
1. CODE (Write Terraform) → 2. PUSH (to GitHub) → 3. GITHUB ACTIONS (validates) → 4. TERRAFORM CLOUD (deploys) → 5. AWS (creates resources)
```

## 🛠️ Quick Setup
1. **Clone this repo**
2. **Copy `terraform.tfvars.example` to `terraform.tfvars`**
3. **Configure your AWS credentials in Terraform Cloud**
4. **Push to GitHub and watch the magic happen!** ✨

## 📝 What Gets Created
- An IAM user named `john-readonly`
- A policy allowing read-only access to S3 buckets
- Secure access keys (stored in Terraform Cloud)

## 🔐 Security Features
- ✅ No AWS credentials in code
- ✅ Encrypted state in Terraform Cloud
- ✅ Least privilege access
- ✅ Automated validation

---
**Perfect for**: DevOps beginners, Terraform learners, AWS security practice

## 🎯 Setup Complete!
Ready to deploy IAM resources automatically! 🚀

## ✅ Testing GitHub Actions
Triggering CI/CD pipeline to verify automated deployment...
