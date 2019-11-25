output "aws_vpc_id" {
    value = "${module.module-vpc.aws_vpc_id}"
}

output "aws_igw_id" {
    value = "${module.module-vpc.aws_igw_id}"
}

output "aws_subnet1" {
  value = "${module.module-vpc.aws_subnet1}"
}

output "aws_subnet2" {
  value = "${module.module-vpc.aws_subnet2}"
}

output "aws_subnet3" {
  value = "${module.module-vpc.aws_subnet3}"
}

output "aws_subnet1_cidr" {
  value = "${module.module-vpc.aws_subnet1_cidr}"
}

output "aws_subnet2_cidr" {
  value = "${module.module-vpc.aws_subnet2_cidr}"
}

output "aws_subnet3_cidr" {
  value = "${module.module-vpc.aws_subnet3_cidr}"
}