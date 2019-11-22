variable "cidr_block" {}
variable "availability_zone" {}
variable "destination_cidr_block" {
    default = "0.0.0.0/0"
}