# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "geerlingguy/ubuntu2004"

  #config.ssh.insert_key = false
  #config.vm.synched_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |v|
   v.memory = 1024
   v.linked_clone = true
  end

# Provisioning configuration for Ansible.
  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.galaxy_roles_path = "/etc/ansible/roles"
    ansible.galaxy_command = "sudo ansible-galaxy collection install community.general --roles-path=%{roles_path} --force"
    ansible.playbook = "ansible_specpro/main.yml"
  end
end
