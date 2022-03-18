resource "keycloak_openid_client" "USER-MANAGEMENT" {
    access_type                                = "PUBLIC"
    admin_url                                  = "https://common-logon-dev.hlth.gov.bc.ca/webapp"
    backchannel_logout_revoke_offline_sessions = false
    backchannel_logout_session_required        = false
    base_url                                   = "https://common-logon-dev.hlth.gov.bc.ca/webapp"
    client_authenticator_type                  = "client-secret"
    client_id                                  = "USER-MANAGEMENT"
    consent_required                           = false
    direct_access_grants_enabled               = false
    display_on_consent_screen                  = false
    enabled                                    = true
    extra_config                               = {}
    frontchannel_logout_enabled                = false
    full_scope_allowed                         = false
    implicit_flow_enabled                      = false
    name                                       = "MoH User Management"
    oauth2_device_authorization_grant_enabled  = false
    realm_id                                   = "moh_applications"
    service_accounts_enabled                   = false
    standard_flow_enabled                      = true
    use_refresh_tokens                         = false
    valid_redirect_uris                        = [
        "*",
    ]
    web_origins                                = [
        "*",
    ]
}

resource "keycloak_openid_client_default_scopes" "USER-MANAGEMENT" {
  realm_id  = keycloak_openid_client.USER-MANAGEMENT.realm_id
  client_id = keycloak_openid_client.USER-MANAGEMENT.id

  default_scopes = [
		"web-origins",
		"profile",
		"roles",
		"email"
  ]
}

resource "keycloak_openid_client_optional_scopes" "USER-MANAGEMENT" {
  realm_id  = keycloak_openid_client.USER-MANAGEMENT.realm_id
  client_id = keycloak_openid_client.USER-MANAGEMENT.id

  optional_scopes = [
		"address",
		"phone",
		"offline_access",
		"microprofile-jwt"
	]
}

resource "keycloak_role" "USER-MANAGEMENT_role_user-management-admin" {
    realm_id    = keycloak_openid_client.USER-MANAGEMENT.realm_id
   client_id   = keycloak_openid_client.USER-MANAGEMENT.id
    name    = "user-management-admin"
    description = "User Management Admin can add/remove groups"
}







