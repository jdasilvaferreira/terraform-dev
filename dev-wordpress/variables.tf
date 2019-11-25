variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

# Ubuntu Precise 18.04 LTS (x86)
variable "aws_amis" {
  default = {
    us-west-2 = "ami-f65dc296"
  }
}

