module "consul" {
  source   = "github.com/wardviaene/terraform-consul-module.git?ref=terraform-0.12"
  key_name = "instance_k"
  region   = var.AWS_REGION
  key_path = var.PATH_TO_PRIVATE_KEY
  vpc_id   = aws_default_vpc.default.id
  subnets = {
    "0" = aws_default_subnet.default_az1.id
    "1" = aws_default_subnet.default_az2.id
    "2" = aws_default_subnet.default_az3.id
  }
}

output "consul-output" {
  value = module.consul.server_address
}

