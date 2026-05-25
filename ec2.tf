provider "aws" {
region = "us-east-1"
access_key = "aeaef"
secret_key = "sdfas"
}
resource "aws_instance" "myec2" {
        ami = "ami-091138d0f0d41ff90"
                        instance_type = "t3.micro"
            key_name = "id_rsa"
vpc_security_group_ids = [ "sg1"]
tags = {
  Name = "myec2"  
  name = "suraj"
  env = "dev"
}
}