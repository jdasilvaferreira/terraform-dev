resource "aws_vpc" "default" {
  cidr_block = "${var.cidr_block}"
}

resource "aws_internet_gateway" "default" {
  vpc_id = "${aws_vpc.default.id}"
}

resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.default.main_route_table_id}"
  destination_cidr_block = "${var.destination_cidr_block}"
  gateway_id             = "${aws_internet_gateway.default.id}"
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "${var.region}a"

  tags = {
    Name = "Sous réseau par défaut pour AZ ${var.region}a"
  }
}

resource "aws_default_subnet" "default_az2" {
  availability_zone = "${var.region}b"

  tags = {
    Name = "Sous réseau par défaut pour AZ ${var.region}b"
  }
}

resource "aws_default_subnet" "default_az3" {
  availability_zone = "${var.region}c"

  tags = {
    Name = "Sous réseau par défaut pour AZ ${var.region}c"
  }
}