variable "cidr_block" {}
variable "region" {}
variable "destination_cidr_block" {
    default = "0.0.0.0/0"
}