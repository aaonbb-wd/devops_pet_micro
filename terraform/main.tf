provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
}

resource "aws_instance" "wordpress" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  tags = {
    Name = var.instance_name
  }
}