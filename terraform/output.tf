output "instance_public_ip" {
  value       = aws_instance.ubuntu-instance.public_ip
  description = "Public ip address of ubuntu ec2"
}
