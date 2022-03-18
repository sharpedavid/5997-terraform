 provider "keycloak" {
  client_id     = var.client_id
  client_secret = var.client_secret
  url           = var.server_url
  realm         = var.realm_id
}