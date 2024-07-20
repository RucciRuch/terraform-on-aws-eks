# Terraform Settings Block
terraform {
  required_version = "~>1.9.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.58"
    }
  }
}

# Terraform Provider Block
provider "aws" {
  region = var.aws_region
}