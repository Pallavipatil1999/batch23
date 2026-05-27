variable "region"{
  default = "us-east-1"
  description = "this is my home region"
}
variable "mybucket" {
  default = "batch23-123"
}
variable "ami"{
    default = "ami-091138d0f0d41ff90"
}
variable "instance_type" {
  default = "t3.micro"
}
variable "key_name" {
  default = "id_rsa"
}
variable "mysg" {
  default = "[sg-0aed4cc5284ab673b]"
}
variable "instance-name" {
  default = "myec2"
}