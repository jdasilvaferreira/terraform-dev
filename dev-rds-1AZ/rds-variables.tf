variable "identifier" {
  default     = "mydb-rds"
  description = "Identifier for your DB"
}

variable "storage" {
  default     = "10"
  description = "Storage size in GB"
}

variable "engine" {
  default     = "postgres"
  description = "Par défaut, lancer une base de données postgres"
}

variable "engine_version" {
  description = "Version des différents moteurs de base de données"

  default = {
    mysql    = "5.7.21"
    postgres = "9.6.8"
  }
}

variable "instance_class" {
  default     = "db.t2.micro"
  description = "Le type et classe de l'instance RDS"
}

variable "db_name" {
  default     = "RDS_Dev1AZ"
  description = "Npm de la base de données"
}

variable "username" {
  default     = "bestuser"
  description = "Utilisateur pour la base de données"
}

variable "password" {
  description = "Envoi du mot de passe dans les variables d'environnement"
}
