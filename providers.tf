### Terraform and provider definition

terraform {
  required_version = "~> 0.14.2"
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.3.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "kubernetes" {
  load_config_file = false
  host             = digitalocean_kubernetes_cluster.kubernetes_cluster.endpoint
  token            = digitalocean_kubernetes_cluster.kubernetes_cluster.kube_config[0].token
  cluster_ca_certificate = base64decode(
    digitalocean_kubernetes_cluster.kubernetes_nyc1_1.kube_config[0].cluster_ca_certificate
  )
}
