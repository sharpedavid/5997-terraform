variable "client_id" {
  description = "The client_id for the Keycloak client"
  type = string
}
 
variable "client_secret" {
  description = "The client_secret for the Keycloak client"
  type = string
}
 
variable "server_url" {
  description = "The URL of the Keycloak instance"
  type = string
}

variable "realm_id" {
  description = "The realm ID of the Keycloak instance"
  type = string
  default = "moh_applications"
}