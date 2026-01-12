terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "student_ec2" {
  ami           = "ami-0a4408457f9a03be3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Student-EC2"
  }
}
