#
data "digitalocean_kubernetes_versions" "kubernetes_version" {
  version_prefix = "${var.kubernetes_version}."
}

output "kubernetes_versions" {
  value = data.digitalocean_kubernetes_versions.kubernetes_version.valid_versions
}

resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name         = var.cluster_name
  region       = var.region
  version      = data.digitalocean_kubernetes_versions.kubernetes_version.latest_version
  auto_upgrade = true
  tags         = var.cluster_tags

  node_pool {
    name       = var.default_node_pool_name
    size       = var.nodes_type
    auto_scale = true
    min_nodes  = var.default_node_pool_min_nodes
    max_nodes  = var.default_node_pool_max_nodes
    tags       = var.default_node_pool_tags
  }
}
