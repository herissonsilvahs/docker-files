output "n8nip" {
  description = "n8n ip"
  value = digitalocean_droplet.n8n01.ipv4_address
}

resource "local_file" "tf_ansible_vars_file_new" {
  content = <<-DOC
    [n8n]
    ${digitalocean_droplet.n8n01.ipv4_address}

    [all:vars]
    ansible_user = root
    DOC
  filename = "../hosts"
}
