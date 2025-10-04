provider "kubernetes" {
  config_path = var.kubeconfig_path
}

provider "google" {
  project = var.project_id
  region  = var.region
}