output "aws_vpc_id" {
    value = "${aws_vpc.default.id}"
}

output "aws_igw_id" {
    value = "${aws_internet_gateway.default.id}"
}

output "aws_default_subnet1" {
  value = "${aws_default_subnet.default_az1.id}"
}

output "aws_default_subnet2" {
  value = "${aws_default_subnet.default_az2.id}"
}

output "aws_default_subnet3" {
  value = "${aws_default_subnet.default_az3.id}"
}

output "aws_default_subnet1_cidr" {
  value = "${aws_default_subnet.default_az1.cidr_block}"
}

output "aws_default_subnet2_cidr" {
  value = "${aws_default_subnet.default_az2.cidr_block}"
}

output "aws_default_subnet3_cidr" {
  value = "${aws_default_subnet.default_az3.cidr_block}"
}