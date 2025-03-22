variable "aws_region" {
  description = "AWS region to launch servers"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  type        = string
}

# ИЗМЕНЕНО: Переименовано из "instance_name" в "web_instance_name"
variable "web_instance_name" {
  description = "Name of Web EC2 instance (Nginx and WordPress)"
  type        = string
}

# ДОБАВЛЕНО: Новая переменная для имени DB инстанса
variable "db_instance_name" {
  description = "Name of Database EC2 instance (MySQL)"
  type        = string
}

variable "ssh_key_name" {
  description = "Name of SSH key pair"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "aws_profile" {
  description = "The AWS profile to use for authentication"
  type        = string
}