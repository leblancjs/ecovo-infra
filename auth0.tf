variable "auth0_domain" {}

provider "auth0" {}

resource "auth0_client" "ecovo-mobile" {
  name        = "Ecovo Mobile"
  description = "A mobile application to facilitate carpooling."
  app_type    = "native"
  callbacks = [
    "com.ecovo.ecovo://${var.auth0_domain}/ios/com.ecovo.ecovo/callback",
    "com.ecovo://${var.auth0_domain}/android/com.ecovo/callback"
  ]
}
