variable "auth0_domain" {}
variable "auth0_client_id" {}
variable "auth0_client_secret" {}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_client" "ecovo-mobile" {
  name        = "Ecovo Mobile"
  description = "A mobile application to facilitate carpooling."
  app_type    = "native"
  callbacks = [
    "com.ecovo.ecovo://${var.auth0_domain}/ios/com.ecovo.ecovo/callback",
    "com.ecovo://${var.auth0_domain}/android/com.ecovo/callback"
  ]
}
