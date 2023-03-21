# Ansible to configure docker and run project with n8n

create file named "hosts" and add:
```text
[n8n]
one_or_more_hosts

[all:vars]
ansible_user = root
```
