variable "cloudflare_email" {
  type = string
}

variable "cloudflare_api_key" {
  type      = string
  sensitive = true
}

variable "cloudflare_account_id" {
  type = string
}

variable "tailscale_auth_key" {
  type      = string
  sensitive = true
}

variable "relay_ip" {
  type = string
}
