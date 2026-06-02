resource "aws_instance" "myec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [var.mysg]
  tags = {
    Name = var.instance-name1
    name = "suraj"
    env  = "dev"
  }
}


