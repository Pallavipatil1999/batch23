terraform {
  backend "s3" {
    bucket = "batch23-123"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "myec2" {
  ami                    = "ami-091138d0f0d41ff90"
  instance_type          = "t3.micro"
  key_name               = "id_rsa"
  vpc_security_group_ids = ["sg-0aed4cc5284ab673b"]
  tags = {
    Name = "myec2"
    name = "suraj"
    env  = "dev"
  }
}