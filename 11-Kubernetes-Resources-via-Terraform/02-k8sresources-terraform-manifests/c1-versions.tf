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
}