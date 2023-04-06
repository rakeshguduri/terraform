provider "aws" {
  region = "us-east-1"
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
