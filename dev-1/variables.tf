variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "us-west-2"
}

# Ubuntu Precise 18.04 LTS (x86)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-02df9ea15c1778c9c"
    us-west-2 = "ami-06d51e91cea0dac8d"
  }
}

variable "key_path" {
  default = "instance_k.ppk"
}
