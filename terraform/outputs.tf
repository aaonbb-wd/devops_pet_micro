output "web_instance_public_ip" {
  description = "Public IP address of the Web instance (Nginx and WordPress)"
  value       = aws_instance.web.public_ip
}

output "db_instance_public_ip" {
  description = "Public IP address of the Database instance (MySQL)"
  value       = aws_instance.db.public_ip
}