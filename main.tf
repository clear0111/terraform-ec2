terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 1.7.6"
    }
  }
  required_version = ">= 1.7.6"
}
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "terraform-ec2" {
ami = "ami-02dfbd4ff395f2a1b"
instance_type = "t3.micro"
tags = {
Name = "GitHubActionsEC2"
}
}