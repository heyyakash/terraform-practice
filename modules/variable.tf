
variable "ami" {
  description = "Ubuntu free tier ami in us-east-1"
}

variable "instance_type" {
  description = "Instance type for ec2"
}

variable "subnet_value" {
  description = "subnet id "
}

variable "key" {
  description = "ssh key for logging into the server"
}

variable "sg_id" {
  description = "Security Group Id"
}
