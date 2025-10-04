cluster_name = "dev-agents-gke-cluster"
stage        = "dev"
project_id  = ""
# Namespaces are immutable
# Changing an existing namespace name will destroy the old one and create the new namespace
# To create a new namespace just add the name to this list and run terraform commands
gke_namespaces = [
  {
      name = "dev"
      labels = {}
  }
]
