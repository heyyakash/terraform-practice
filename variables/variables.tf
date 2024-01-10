variable "instance_type" {
  description = "Instance config for ec2"
  type = string
  default = "t2.micro"
}

variable "instance_ami" {
    description = "ami for ec2"
    type = string
    default = "ami-0c7217cdde317cfec"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami = var.instance_ami
  instance_type = var.instance_type
  key_name = "aws_login"
  associate_public_ip_address = true
  vpc_security_group_ids = [ "sg-0df82dcd15e27ee4b" ]
}