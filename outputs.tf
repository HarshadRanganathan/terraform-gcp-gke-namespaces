output "namespaces" {
  value = [
    for uid, name in zipmap(
      kubernetes_namespace.namespace.*.metadata.0.uid,
      kubernetes_namespace.namespace.*.metadata.0.name
    ) : tomap({"uid" = uid, "name" = name})
  ]
}