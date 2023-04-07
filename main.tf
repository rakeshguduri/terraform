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
  access_key = "AKIAS7BNAN33HA3ZR6EU"
  secret_key = "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"
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
