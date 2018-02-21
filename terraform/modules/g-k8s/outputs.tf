output "kubernetes-endpoint" {
  value = "${google_container_cluster.k8s-cluster.endpoint}"
}

output "external-ip" {
  value = "${google_compute_global_address.public-ip.address}"
}