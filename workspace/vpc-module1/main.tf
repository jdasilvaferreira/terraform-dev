provider "aws" {
  region  = "us-west-2"
}

module "module-vpc" {
    source = "../../modules/vpc"
    cidr_block = "10.11.0.0/16"
    region = "us-west-2"
}


