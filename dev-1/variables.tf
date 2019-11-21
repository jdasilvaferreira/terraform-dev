variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-1"
}

# Ubuntu Precise 18.04 LTS (x86)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-02df9ea15c1778c9c"
  }
}
