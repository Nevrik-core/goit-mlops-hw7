output "argocd_namespace" {
  value = "infra-tools"
}

output "argocd_admin_password_cmd" {
  value = "kubectl -n infra-tools get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d; echo"
}

output "argocd_port_forward_cmd" {
  value = "kubectl -n infra-tools port-forward svc/argocd-server 8080:443"
}