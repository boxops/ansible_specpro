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

  # App server 1
  #config.vm.define "server" do |app|
  #  app.vm.hostname = "pro-server1.test"
  #  app.vm.network :private_network, ip: "192.168.60.4"
  #end

  # App server 2
  #config.vm.define "client" do |app|
  #  app.vm.hostname = "pro-client1.test"
  #  app.vm.network :private_network, ip: "192.168.60.5"
  #end

  # App server 3
  #config.vm.define "db" do |db|
  #  db.vm.hostname = "orc-db.test"
  #  db.vm.network :private_network, ip: "192.168.60.6"
  #end

# Provisioning configuration for Ansible.
  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.playbook = "node_provisioning/main.yml"

    # ansible.galaxy_role_file = "server_provisioning/requirements.yml"
    # ansible.galaxy_roles_path = "/etc/ansible/roles"
    # ansible.galaxy_command = "sudo ansible-galaxy install --role-file=%{role_file} --roles-path=%{roles_path} --force"
  end

end
