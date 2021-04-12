# Install Ansible and Ansible Galaxy roles on Ubuntu
# Run playbook: ansible-playbook main.yml

sudo apt-get -y update
sudo apt-get -y install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt-get -y install ansible
ansible-galaxy install -r requirements.yml

