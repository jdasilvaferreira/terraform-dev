variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "az" {
  description = "Availability Zone pour le sous réseau"
  default = "us-west-2a"
}

# Ubuntu Wordpress
variable "aws_amis" {
  default = {
    us-west-2 = "ami-f65dc296"
  }
}

variable "vpc_id" {
  default = "vpc-09aed5440ad6f2399"
}

variable "vpc_cidr_block" {
  default = "10.11.0.0/16"
}

variable "subnet" {
  default = "subnet-037d86218d0191943"
}

