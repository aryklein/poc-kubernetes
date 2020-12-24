variable "do_token" {
  type        = string
  description = "DigitalOcean API Token"
}

variable "region" {
  type        = string
  description = "Kubernetes cluster region"
}

variable "nodes_type" {
  type        = string
  description = "Instance type for worker node"
}

variable "default_node_pool_name" {
  type        = string
  description = "Default node pool name"
}

variable "cluster_name" {
  type        = string
  description = "Kubernetes cluster name"
}

variable "cluster_tags" {
  type        = list(string)
  description = "Kubernetes cluster tags"
}

variable "default_node_pool_tags" {
  type        = list(string)
  description = "Default node pool tags"
}

variable "default_node_pool_min_nodes" {
  type        = number
  description = "Minimum number of worker node for the default node pool"
}

variable "default_node_pool_max_nodes" {
  type        = number
  description = "Maximun number of worker node for the default node pool"
}

variable "kubernetes_version" {
  type        = string
  description = "Kubernetes version"
}
