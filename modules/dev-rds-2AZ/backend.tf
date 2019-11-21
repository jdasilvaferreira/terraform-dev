terraform {
    backend "s3" {
        bucket = "terraform-env-remote-state"
        key    = "dev-rds-2AZ"
        region = "eu-west-1"
    }
}