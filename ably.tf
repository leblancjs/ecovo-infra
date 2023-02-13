provider "ably" {}

resource "ably_app" "ecovo" {
  name     = "ecovo"
  status   = "enabled"
  tls_only = true
}
