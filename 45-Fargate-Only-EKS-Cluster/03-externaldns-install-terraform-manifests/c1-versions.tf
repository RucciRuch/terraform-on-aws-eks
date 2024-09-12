# Terraform Settings Block
terraform {
  required_version = "~> 1.9.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
      version = "~> 5.58"
    }
    helm = {
      source = "hashicorp/helm"
      #version = "2.5.1"
      #version = "~> 2.5"
      version = "~> 2.15.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      #version = "~> 2.11"
      version = "~> 2.32.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-oao"
    key    = "dev/aws-externaldns/terraform.tfstate"
    region = "us-east-2"

    # For State Locking
    dynamodb_table = "dev-aws-externaldns"
  }
}

# Terraform AWS Provider Block
provider "aws" {
  region = var.aws_region
}

