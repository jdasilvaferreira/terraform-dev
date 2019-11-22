module "module-vpc" {
    source = "github.com/jdasilvaferreira/terraform-dev/modules/vpc"
    cidr_block = "${var.cidr_block}"
    vpc_region = "eu-west-1"
}

variable "cidr_block" {
    default = "10.10.0.0/16"
}
