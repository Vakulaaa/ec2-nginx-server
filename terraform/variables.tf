variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "my_ip" {
  type        = string
  description = "Your public IP used for SSH ingress"
}

variable "public_key" {
  type        = string
  description = "SSH public key for EC2"
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDummyKeyForCI"
}