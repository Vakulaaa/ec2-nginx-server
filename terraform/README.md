# Terraform (AWS EC2)

This module provisions VPC, subnet, security group and EC2 in AWS.

Requirements:
- Terraform >= 1.5
- AWS CLI configured
- SSH key ~/.ssh/id_ed25519.pub

Run:
terraform init
terraform apply -var="my_ip=$(curl -s https://checkip.amazonaws.com)"

Outputs:
- public_ip — instance public IP
- ssh — SSH command

Cleanup:
terraform destroy

Notes:
- SSH access is restricted to your IP (my_ip).
- If the instance is stopped, public_ip will be empty.
