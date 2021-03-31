ansible_specpro
===============

This is a configuration management program created for a portable network monitoring project using Ansible that significantly reduces the manual provisioning effort and time spent by network engineers when applying configuration on Debian-based systems.

Notes
-----

Ensure to customise variables in ```vars/``` before usage.

Usage
-----

### Provision Cloud Servers
```bash
cd ansible_specpro/cloud_server_provisioning
ansible-playbook main.yml
```
### Or Provision Nodes
```bash
cd ansible_specpro/node_provisioning
ansible-playbook main.yml
```

License
-------

Apache License 2.0
