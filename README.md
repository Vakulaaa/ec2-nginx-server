![CI](https://github.com/Vakulaaa/ec2-nginx-server/actions/workflows/ci.yml/badge.svg)

# ec2-nginx-iac

Infrastructure as Code demo: Terraform provisions AWS infrastructure, Ansible installs and configures Nginx on EC2.

Structure:
- terraform/ — infrastructure (VPC, subnet, SG, EC2)
- ansible/ — configuration and deployment (nginx role)

Requirements:
- Terraform >= 1.5
- Ansible
- AWS CLI and IAM user with EC2/VPC permissions
- SSH key ~/.ssh/id_ed25519.pub

Run:
1) cd terraform
2) terraform init
3) terraform apply -var="my_ip=$(curl -s https://checkip.amazonaws.com)"
4) terraform output -raw public_ip
5) Update ansible/inventory.ini:
   [web]
   <public_ip> ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/id_ed25519
6) cd ../ansible
7) ansible-playbook site.yml --ask-become-pass
8) Verify:
   curl http://<public_ip>

Cleanup:
cd terraform
terraform destroy

Notes:
- If the instance was stopped/started, the public IP may change — update inventory.ini.
- SSH access is restricted to your public IP via my_ip variable.
