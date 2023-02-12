variable "ably_api_token" {}

provider "ably" {
  token = var.ably_api_token
}

resource "ably_app" "ecovo" {
  name     = "ecovo"
  status   = "enabled"
  tls_only = true
}
