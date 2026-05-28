variable "region" {
  default = "us-east-1"
}
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}
locals {
  pub-sub-cidr = "10.0.1.0/24"
}

variable "pvt-sub-cidr" {
  default = "10.0.2.0/24"
}

variable "ami" {
  default = "ami-091138d0f0d41ff90"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "id_rsa"
}
variable "mysg" {
  default = "sg-0aed4cc5284ab673b"
}
variable "instance-name1" {
  default = "myec2"
}
