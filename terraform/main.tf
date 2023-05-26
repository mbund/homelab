module "cloudflare" {
  source                = "./modules/cloudflare"
  cloudflare_account_id = var.cloudflare_account_id
  cloudflare_email      = var.cloudflare_email
  cloudflare_api_key    = var.cloudflare_api_key
  relay_ip              = var.relay_ip
}

module "tailscale" {
  source             = "./modules/tailscale"
  tailscale_auth_key = var.tailscale_auth_key
}
