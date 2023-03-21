# Compose file to up n8n self hosted

### You can find at official documentation [here](https://docs.n8n.io/hosting/installation/docker)

### Before up with docker compose, copy .env.example to .env and type yours keys

Starting the container:
```bash
$ docker compose up -d
```

Now you can access in yor browser htpp://localhost:5678

# Terraform setup digital ocean machine
create file named "hosts" and add:
```text
[n8n]
one_or_more_hosts

[all:vars]
ansible_user = root
```
Create too file named "terraform.tfvars":
```text
do_token = "your_digitalocean_token"
ssh_key = "your_ssh_firgerprint"
```

For change machine and plan settings modify "main.tf"

Your can run validate to validade configurations
```bash
$ terraform validate
```

Init and apply
```bash
$ terraform init
```

```bash
$ terraform apply
```
