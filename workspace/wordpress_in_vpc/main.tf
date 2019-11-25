provider "aws" {
  region  = "${var.aws_region}"
}

module "wordpress-in-vpc" {
    source = "../../modules/wordpress_1az"
    
    aws_region = "${var.aws_region}"

    vpc_id = "${var.vpc_id}"
    vpc_cidr_block = "${var.vpc_cidr_block}"

    subnet = "${var.subnet}"
}