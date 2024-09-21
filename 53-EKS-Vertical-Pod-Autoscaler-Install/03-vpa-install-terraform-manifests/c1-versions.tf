# Terraform Settings Block
terraform {
  required_version = "~> 1.9.2"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2.3"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "terraform-on-aws-eks-oao"
    key    = "dev/eks-vpa-install/terraform.tfstate"
    region = "us-east-2"

    # For State Locking
    dynamodb_table = "dev-eks-vpa-install"
  }
}

provider "null" {
  # Configuration options
}