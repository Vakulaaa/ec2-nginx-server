# Ansible (Nginx)

This playbook installs Nginx and configures the page using the nginx role.

Requirements:
- Ansible
- SSH access to EC2

Prepare:
Update inventory.ini:
[web]
<public_ip> ansible_user=ec2-user ansible_ssh_private_key_file=~/.ssh/id_ed25519

Run:
ansible-playbook site.yml --ask-become-pass

Verify:
curl http://<public_ip>

Notes:
- Nginx config is generated from templates/nginx.conf.j2.
- HTML comes from files/index.html.
