variable "cidr_blocks" {
  default     = "0.0.0.0/0"
  description = "Bloc CIDR pour le Security Group"
}

variable "sg_name" {
  default     = "rds_sg"
  description = "Nom du Security Group"
}