variable "ami_id" {}
variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "vpc_security_group_ids" {
  type = "list"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "${var.ami_id}"
  instance_type = "t2.micro"
}
