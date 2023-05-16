module "cloudflare" {
  source                = "./modules/cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_email      = var.cloudflare_email
  cloudflare_api_key    = var.cloudflare_api_key
}

resource "kubernetes_secret" "tailscale_auth" {
  metadata {
    name      = "tailscale-auth"
    namespace = "private-ingress-nginx"
  }

  data = {
    TS_AUTHKEY = var.tailscale_auth_key
  }
}
