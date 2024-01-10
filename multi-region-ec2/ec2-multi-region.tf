provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  provider = aws.us-east-1
  key_name = "aws_login"
}

resource "aws_instance" "example2" {
  ami = "ami-008fe2fc65df48dac"
  instance_type = "t2.micro"
  provider = aws.us-west-2
  key_name = "aws_login"
}