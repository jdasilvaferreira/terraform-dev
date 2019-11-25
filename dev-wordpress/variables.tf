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

