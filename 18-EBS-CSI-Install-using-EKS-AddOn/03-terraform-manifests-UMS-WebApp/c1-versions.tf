# Terraform Settings Block
terraform {
  required_version = "~> 1.9.2"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = ">= 4.65"
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
    key    = "dev/dev-ebs-sampleapp-demo/terraform.tfstate"
    region = "us-east-2"

    # For State Locking
    dynamodb_table = "dev-ebs-sampleapp-demo"
  }
}

