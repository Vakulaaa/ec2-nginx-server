output "public_ip" {
  value = aws_instance.ec2_basic.public_ip
}

output "ssh" {
  value = "ssh ec2-user@${aws_instance.ec2_basic.public_ip}"
}