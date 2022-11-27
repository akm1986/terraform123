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
  access_key = "AKIAZZDHTXKOTGSGVJ7R"
  secret_key = "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"
}

resource "aws_instance" "s1" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}
resource "aws_instance" "s2" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
    Name = "server2"
  }
}
resource "aws_instance" "s3" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  tags = {
    Name = "server3"
  }
}



