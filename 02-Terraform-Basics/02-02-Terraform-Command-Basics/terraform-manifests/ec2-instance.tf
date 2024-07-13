# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.31" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-2"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0649bea3443ede307" # Amazon Linux in us-east-2, update as per your region
  instance_type = "t2.micro"
}
