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
  access_key = "AKIA4QLDK6IEJNPZC5WG"
  secret_key = "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"
}

resource "aws_instance" "web" {
  count         = 5
  ami           = "ami-072ec8f4ea4a6f2cf"
  instance_type = "t2.micro"

  tags = {
    Name = "sandy"
  }
}
