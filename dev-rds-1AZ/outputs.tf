output "subnet" {
  value = "${aws_subnet.rds_subnet.id}"
}

output "db_instance_id" {
  value = "${aws_db_instance.default.id}"
}

output "db_instance_address" {
  value = "${aws_db_instance.default.address}"
}
