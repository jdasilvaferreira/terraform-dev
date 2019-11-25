variable "cidr_block" {
    default = "10.10.0.0/16"
}

variable "region" {
    default = "us-west-2"
}

variable "destination_cidr_block" {
    default = "0.0.0.0/0"
}

variable "subnet1_cidr_block" {
    default = "10.10.32.0/24"
}

variable "subnet2_cidr_block" {
    default = "10.10.64.0/24"
}

variable "subnet3_cidr_block" {
    default = "10.10.96.0/24"
}