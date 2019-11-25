output "vpc_id" {
  value = "${aws_vpc.default.id}"
}

output "address" {
  value = "${aws_elb.web.dns_name}"
}
