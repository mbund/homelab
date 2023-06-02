resource "kubernetes_secret" "tailscale_auth" {
  metadata {
    name      = "tailscale-auth"
    namespace = "tailscale"
  }

  data = {
    TS_AUTHKEY = var.tailscale_auth_key
  }
}

resource "kubernetes_secret" "tailscale_auth_pihole" {
  metadata {
    name      = "tailscale-auth"
    namespace = "pihole"
  }

  data = {
    TS_AUTHKEY = var.tailscale_auth_key
  }
}
