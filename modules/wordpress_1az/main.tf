# Spécification de la région AWS sur laquelle créer les ressources
provider "aws" {
  region = "${var.aws_region}"
}

# Sous réseau créé pour y mettre les nodes backend
resource "aws_subnet" "default" {
  vpc_id                  = "${var.vpc_id}"
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "${var.az}"
  map_public_ip_on_launch = true
}

#Le security group pour l'Elastic Load Balancer
resource "aws_security_group" "elb" {
  name        = "terraform-vpc-elb"
  description = "Autorisant le traffic HTTP sur toutes les adresses IP"
  vpc_id      = "${var.vpc_id}"

  # Autorise le protocol HTTP partout
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Autorise tout traffic sortant
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Le security group pour l'instance EC2
resource "aws_security_group" "default" {
  name        = "terraform-vpc-webnode"
  description = "Autorisant le traffic HTTP dans le VPC Terraform et les connexions SSH depuis tout hote"
  vpc_id      = "${var.vpc_id}"

  # Acces SSH depuis n'importe où
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Acces HTTP depuis le VPC (les connexions se feront depuis l'ELB)
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  # Traffic sortant
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Elastic Load Balancer pour le node wordpress
resource "aws_elb" "web" {
  name = "terraform-example-elb"

  subnets         = ["${aws_subnet.default.id}"]
  security_groups = ["${aws_security_group.elb.id}"]
  instances       = ["${aws_instance.web.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

# Création de l'instance EC2 sur le VPC et sous réseau créé précédemment
resource "aws_instance" "web" {
  connection {
    # Utilisateur par défaut (il s'agit d'une AMI Ubuntu)
    user = "ubuntu"
    host = "${self.public_ip}"
  }

  instance_type = "t2.micro"

  # Cherche l'AMI dans la liste en fonction de la région (voir fichier variables.tf)
  ami = "${lookup(var.aws_amis, var.aws_region)}"

  # Le nom de la keypair utilisée
  key_name = "instance_k"

  # Le security group autorisant les protocoles SSH (0.0.0.0/0) et HTTP (dans le VPC uniquement)
  vpc_security_group_ids = ["${aws_security_group.default.id}"]

  # Sous réseau privé lequel l'instance EC2 est lancée
  subnet_id = "${aws_subnet.default.id}"
}
