# # Terraform Settings Block
# terraform {
#   required_version = ">= 1.0.0"
#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       #version = "~> 3.70"
#       version = ">= 4.65"
#     }
#     kubernetes = {
#       source = "hashicorp/kubernetes"
#       #version = "~> 2.7"
#       version = ">= 2.20"
#     }    
#   }
# }
# Terraform Settings Block
terraform {
  required_version = "~> 1.9.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.58"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.31.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-oao"
    key    = "dev/app1k8s/terraform.tfstate"
    region = "us-east-2"

    # For State Locking
    dynamodb_table = "dev-app1k8s"
  }
}