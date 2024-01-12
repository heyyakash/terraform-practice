provider "aws" {
  region = "us-east-1"
}

# module "ec2_instance" {
#   source        = "./modules/ec2"
#   ami           = "ami-0c7217cdde317cfec"
#   instance_type = "t2.micro"
#   subnet_value  = "your subet"
#   key           = "your key"
#   sg_id         = "you sg"
# }
