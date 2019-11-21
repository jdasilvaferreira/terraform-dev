variable "subnet_cidr" {
  default     = "10.0.32.0/24"
  description = "Bloc CIDR du sous réseau privé pour RDS"
}

variable "az" {
  default     = "eu-west-1a"
  description = "Availability Zone for the RDS"
}

variable "vpc_id" {
  default     = "vpc-035ceeec60f47da9b"
  description = "Terraform VPC"
}
