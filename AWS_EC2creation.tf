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
  access_key = "AKIA4QLDK6IEG4JAMTV2"
  secret_key = "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"
}

resource "aws_instance" "web" {
  count         = 1
  ami           = "ami-072ec8f4ea4a6f2cf"
  instance_type = "t2.micro"

  tags = {
    Name = "PracticeEC2"
  }
}
