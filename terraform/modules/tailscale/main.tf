resource "kubernetes_secret" "tailscale_auth" {
  metadata {
    name      = "tailscale-auth"
    namespace = "private-ingress-nginx"
  }

  data = {
    TS_AUTHKEY = var.tailscale_auth_key
  }
}
