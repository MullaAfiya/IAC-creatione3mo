terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "accesskey"
  secret_key = "pwd"
}

resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-072ec8f4ea4a6f2cf"
  instance_type = "t2.micro"

  tags = {
    Name = "PracticeEC2"
  }
}
