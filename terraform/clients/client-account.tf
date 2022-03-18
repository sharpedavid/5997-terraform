resource "keycloak_openid_client" "account" {
access_type                                = "CONFIDENTIAL"
    backchannel_logout_revoke_offline_sessions = false
    backchannel_logout_session_required        = false
    base_url                                   = "/realms/moh_applications/account/"
    client_authenticator_type                  = "client-secret"
    client_id                                  = "account"
    consent_required                           = false
    description                                = "Account Management"
    direct_access_grants_enabled               = false
    display_on_consent_screen                  = false
    enabled                                    = true
    extra_config                               = {}
    frontchannel_logout_enabled                = false
    full_scope_allowed                         = false
    implicit_flow_enabled                      = false
    login_theme                                = "moh-app-realm"
    name                                       = "Account Management"
    oauth2_device_authorization_grant_enabled  = false
    realm_id                                   = "moh_applications"
    root_url                                   = format("%s%s","$","{authBaseUrl}")
    service_accounts_enabled                   = false
    standard_flow_enabled                      = true
    use_refresh_tokens                         = false
    valid_redirect_uris                        = [
        "/realms/moh_applications/account/*",
    ]
    web_origins                                = [
        "*",
    ]
}

resource "keycloak_role" "account_role_manage-account" {
    realm_id    = keycloak_openid_client.account.realm_id
   client_id   = keycloak_openid_client.account.id
    name    = "manage-account"
    description = format("%s%s","$","{role_manage-account}")
    composite_roles = [
        keycloak_role.account_role_manage-account-links.id
    ]
}
resource "keycloak_role" "account_role_view-profile" {
    realm_id    = keycloak_openid_client.account.realm_id
   client_id   = keycloak_openid_client.account.id
    name    = "view-profile"
    description = format("%s%s","$","{role_view-profile}")
}

resource "keycloak_role" "account_role_manage-account-links" {
    realm_id    = keycloak_openid_client.account.realm_id
   client_id   = keycloak_openid_client.account.id
    name    = "manage-account-links"
    description = format("%s%s","$","{role_manage-account-links}")
}


