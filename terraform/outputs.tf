output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.wordpress.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.wordpress.public_ip
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value       = "ssh -i ${var.ssh_key_name}.pem ec2-user@${aws_instance.wordpress.public_ip}"
}