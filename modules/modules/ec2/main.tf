provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "aws-ec2-instace" {
  ami = var.ami
  instance_type = var.instance_type
  associate_public_ip_address = true
  key_name = var.key
  vpc_security_group_ids = [ var.sg_id ]
}

# terraform.tfvar
# ami="ami-0c7217cdde317cfec"
# instance_type="t2.micro"
# subnet_value="your-subnit-it"
# key="your-key-pair"
# sg_id="your-sg-id"