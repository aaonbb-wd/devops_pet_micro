variable "aws_region" {
  description = "AWS region to launch servers"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  type        = string
}

variable "instance_name" {
  description = "Name of EC2 instance"
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