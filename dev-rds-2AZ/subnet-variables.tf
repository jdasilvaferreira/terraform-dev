variable "subnet_1_cidr" {
  default     = "10.32.32.0/24"
  description = "RDS subnet AZ A"
}

variable "subnet_2_cidr" {
  default     = "10.32.64.0/24"
  description = "RDS subnet AZ 2"
}

variable "az_1" {
  default     = "us-west-2a"
  description = "AZ A"
}

variable "az_2" {
  default     = "us-west-2b"
  description = "AZ B"
}

variable "vpc_id" {
  default     = "vpc-09aed5440ad6f2399"
  description = "Your VPC ID"
}
