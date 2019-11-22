resource "aws_key_pair" "instance_k" {
  key_name   = "instance_k"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}

