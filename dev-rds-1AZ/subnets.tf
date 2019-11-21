resource "aws_subnet" "rds_subnet" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.az}"

  tags = {
    Name = "main_subnet"
  }
}
