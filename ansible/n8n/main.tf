terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
# variable "do_token" {
#   default = var.do_token
# }

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

# Create a web server
resource "digitalocean_droplet" "n8ntest01" {
  name     = "n8ntest-01"
  image    = "ubuntu-22-04-x64"
  size     = "s-1vcpu-1gb"
  region   = "nyc1"
  ssh_keys = [var.ssh_key]
}
