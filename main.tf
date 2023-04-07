terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">4.32.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
resource "aws_instance" "vm" {
  ami                         = "ami-007855ac798b5175e"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  security_groups             = ["free"]
  key_name                    = "kasi"

  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"

  }
  tags = {
    Name = "ec2"
  }

}
