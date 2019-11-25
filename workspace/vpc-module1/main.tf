provider "aws" {
  region  = "us-west-2"
}

module "module-vpc" {
    source = "../../modules/vpc"
    cidr_block = "10.11.0.0/16"
    region = "us-west-2"

    subnet1_cidr_block = "10.11.32.0/24"
    subnet2_cidr_block = "10.11.64.0/24"
    subnet3_cidr_block = "10.11.96.0/24"
}


