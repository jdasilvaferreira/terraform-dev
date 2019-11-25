module "module-vpc" {
    source = "github.com/jdasilvaferreira/aws-vpc-module.git"
    cidr_block = "${var.cidr_block}"
    region = "eu-west-1"
}


