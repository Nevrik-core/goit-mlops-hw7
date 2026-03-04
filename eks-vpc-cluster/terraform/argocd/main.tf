resource "kubernetes_namespace" "infra_tools" {
  metadata { name = "infra-tools" }
}

resource "helm_release" "argocd" {
  name      = "argocd"
  namespace = kubernetes_namespace.infra_tools.metadata[0].name

  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "9.4.5"

  values  = [file("${path.module}/values/argocd-values.yaml")]

  wait    = true
  atomic  = false
  timeout = 1800

  depends_on = [kubernetes_namespace.infra_tools]
}