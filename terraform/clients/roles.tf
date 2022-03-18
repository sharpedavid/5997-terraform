resource "keycloak_role" "UMS_role_create-user" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "create-user"
}
resource "keycloak_role" "UMS_role_manage-user-details" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "manage-user-details"
}
resource "keycloak_role" "UMS_role_manage-user-groups" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "manage-user-groups"
}
resource "keycloak_role" "UMS_role_manage-user-roles" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "manage-user-roles"
}
resource "keycloak_role" "UMS_role_manage-users" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "manage-users"
}
resource "keycloak_role" "UMS_role_view-client-bcer-cp" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-bcer-cp"
}
resource "keycloak_role" "UMS_role_view-client-eacl" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-eacl"
}
resource "keycloak_role" "UMS_role_view-client-fmdb" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-fmdb"
}
resource "keycloak_role" "UMS_role_view-client-gis" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-gis"
}
resource "keycloak_role" "UMS_role_view-client-hamis" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-hamis"
}
resource "keycloak_role" "UMS_role_view-client-hcimweb" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-hcimweb"
}
resource "keycloak_role" "UMS_role_view-client-hem" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-hem"
}
resource "keycloak_role" "UMS_role_view-client-hscis" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-hscis"
}
resource "keycloak_role" "UMS_role_view-client-maid-case-management-1" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-maid-case-management-1"
}
resource "keycloak_role" "UMS_role_view-client-miwt" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-miwt"
}
resource "keycloak_role" "UMS_role_view-client-mspdirect-service" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-mspdirect-service"
}
resource "keycloak_role" "UMS_role_view-client-pidp-service" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-pidp-service"
}
resource "keycloak_role" "UMS_role_view-client-plr" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-plr"
}
resource "keycloak_role" "UMS_role_view-client-sa-dbaac-portal" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sa-dbaac-portal"
}
resource "keycloak_role" "UMS_role_view-client-sa-hibc-service-bc-portal" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sa-hibc-service-bc-portal"
}
resource "keycloak_role" "UMS_role_view-client-sa-sfdc" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sa-sfdc"
}
resource "keycloak_role" "UMS_role_view-client-sat-case-management-1" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sat-case-management-1"
}
resource "keycloak_role" "UMS_role_view-client-sat-drug-management-1" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sat-drug-management-1"
}
resource "keycloak_role" "UMS_role_view-client-sfds" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-sfds"
}
resource "keycloak_role" "UMS_role_view-client-swt" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-swt"
}
resource "keycloak_role" "UMS_role_view-client-webcaps" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-client-webcaps"
}
resource "keycloak_role" "UMS_role_view-clients" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-clients"
}
resource "keycloak_role" "UMS_role_view-events" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-events"
}
resource "keycloak_role" "UMS_role_view-groups" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-groups"
}
resource "keycloak_role" "UMS_role_view-users" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    name    = "view-users"
}