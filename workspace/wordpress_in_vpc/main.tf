provider "aws" {
  region  = "us-west-2"
}

module "wordpress-in-vpc" {
    source = "../../modules/wordpress_1az"
    vpc_id = "${module.module-vpc.vpc_id}"
    region = "us-west-2"
}