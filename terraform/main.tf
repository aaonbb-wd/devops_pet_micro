provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

# Инстанс для Nginx и WordPress
resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  tags = {
    Name = var.web_instance_name
  }
}

# Инстанс для MySQL
resource "aws_instance" "db" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  tags = {
    Name = var.db_instance_name
  }
}