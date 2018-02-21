variable "k8s_name" {
  description = "Define k8s cluster name. May contain env"
}

variable "k8s_description" {
  description = "Provide detailed k8s cluster description"
}

variable "k8s_zone" {
  description = "Define availability zone, where to provision k8s cluster"
}

variable "k8s_nodes_count" {
  description = "Define initial node count for k8s cluster"
}

variable "k8s_ipv4_cidr" {
  description = "Provide ipv4 private network cidr in format x.x.x.x/x"
}

variable "k8s_master_username" {
  description = "Privide k8s cluster admin username"
}

variable "k8s_master_password" {
  description = "Privide k8s cluster admin password"
}

variable "k8s_disk_size" {
  description = "Set attached disk size, in GB"
}

variable "k8s_label_environment" {}
variable "k8s_lablel_resource" {}

variable "ip_name" {
  description = "Name for public IP address"
}