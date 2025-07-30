output "instance_public_ip" {
  value = aws_instance.windows_web.public_ip
}

output "web_url" {
  value = "http://${aws_instance.windows_web.public_dns}"
}
