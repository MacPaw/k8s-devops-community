// You may configure Terraform remote state here

// Also add GCE service account (json to Vault)
// In POC it will be loaded from file

// Also you need to register your project in GCE

// Configuring access to GCE and project
provider "google" {
  region      = "us-central1"
  project     = "your-project-name-here"
  credentials = "${file("credentials.json")}"
}

// Provision k8s cluster in GKE
module "k8s-cluster" {
  source = "../../modules/g-k8s"

  k8s_name        = "sample-k8s-env"
  k8s_description = "k8s cluster used for sample in DevOps community"

  k8s_zone        = "us-central1"
  k8s_nodes_count = 2
  k8s_ipv4_cidr   = "10.100.0.0/16"
  k8s_disk_size   = 15

  k8s_master_username = "kubeadmin"
  k8s_master_password = "yourSuperSecuredPassword"

  k8s_label_environment = "sample"
  k8s_lablel_resource   = "devops-community"
}
