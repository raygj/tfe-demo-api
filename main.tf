terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "jray-demo-ec2-TF12" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.small"

  tags = {
    Name  = "jray-demo-ec2-restrict-test"
    owner = "jray@hashicorp.com"
    ttl   = "2"
  }
}