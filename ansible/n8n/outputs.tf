output "n8nip" {
  description = "n8n ip"
  value = digitalocean_droplet.n8ntest01.ipv4_address
}