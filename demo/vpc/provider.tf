terraform {
  backend "s3" {
    bucket         = "batch23-123"
    region         = "us-east-1"
    key            = "tfstate"
    dynamodb_table = "value"
  }
}
provider "aws" {
  region = var.region
}