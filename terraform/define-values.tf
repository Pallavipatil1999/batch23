variable "region" {
  default = "us-east-1"
}
variable "vpc-cidr" {
  default = "10.0.0.0/16"
}

variable  "pub-sub-cidr"{
    default = "10.0.1.0/24"
}

variable "pvt-sub-cidr" {
  default = "10.0.2.0/24"
}
variable "az1" {
  default = "us-east-1a"
}
variable "az2" {
  default = "us-east-1b"
}
variable "route-cidr" {
  default = "0.0.0.0/0"
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
  default = "myinstance"
}
variable "project" {
  default = "devops"
}