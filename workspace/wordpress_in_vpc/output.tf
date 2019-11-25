output "elb_address" {
    value = "${module.wordpress-in-vpc.address}"
}