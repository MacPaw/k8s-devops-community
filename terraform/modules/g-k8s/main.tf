resource "google_container_cluster" "k8s-cluster" {
  name        = "${var.k8s_name}"
  description = "${var.k8s_description}"

  zone               = "${var.k8s_zone}-a"
  initial_node_count = "${var.k8s_nodes_count}"

  additional_zones = [
    "${var.k8s_zone}-b",
  ]

  cluster_ipv4_cidr = "${var.k8s_ipv4_cidr}"

  master_auth {
    username = "${var.k8s_master_username}"
    password = "${var.k8s_master_password}"
  }

  node_config {
    preemptible = true

    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/service.management.readonly",
      "https://www.googleapis.com/auth/servicecontrol",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
    ]

    disk_size_gb = "${var.k8s_disk_size}"

    labels {
      environment = "${var.k8s_label_environment}"
      response    = "${var.k8s_lablel_resource}"
    }
  }
}

resource "google_compute_global_address" "public-ip" {
  name = "${var.ip_name}"
}