variable "subnet_1_cidr" {
  default     = "10.0.32.0/24"
  description = "RDS subnet AZ A"
}

variable "subnet_2_cidr" {
  default     = "10.0.64.0/24"
  description = "RDS subnet AZ 2"
}

variable "az_1" {
  default     = "eu-west-1a"
  description = "AZ A"
}

variable "az_2" {
  default     = "eu-west-1b"
  description = "AZ B"
}

variable "vpc_id" {
  default     = "vpc-035ceeec60f47da9b"
  description = "Your VPC ID"
}
