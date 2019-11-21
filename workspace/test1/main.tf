module "module-vpc"{
    source = "../../modules/vpc"
    cidr_block = "${var.cidr_block}"
}

variable "cidr_block" {
    default = "10.10.0.0/16"
}
