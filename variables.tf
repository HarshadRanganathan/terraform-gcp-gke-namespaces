variable "project_id" {
  description = "The GCP project of the GKE cluster."
  type        = string
}

variable "location" {
  description = "The location (region or zone) of the GKE cluster."
  default     = "us-central1"
  type        = string
}

variable "region" {
  description = "The region of the GKE cluster."
  type        = string
  default     = "us-central1" # You can set a default value or provide it in a `.tfvars` file.
}

variable "cluster_name" {
  description = "The name of the GKE cluster."
  type        = string
}

variable "gke_namespaces" {
  description = "A list of namespaces to create in the Kubernetes cluster."
  type        = list(object({
    name   = string
    labels = map(string)
  }))
}

variable "stage" {
  description = "The stage of the environment (e.g., dev, prod)."
  type        = string
}

variable "kubeconfig_path" {
  description = "Path to the kubeconfig file"
  default = "~/.kube/config"
  type        = string
}