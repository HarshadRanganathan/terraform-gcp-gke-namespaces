resource "kubernetes_namespace" "namespace" {
  count = length(var.gke_namespaces)
  metadata {
    name   = (element(var.gke_namespaces, count.index)).name
    labels = (element(var.gke_namespaces, count.index)).labels
  }
}