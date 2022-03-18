resource "keycloak_openid_client" "USER-MANAGEMENT-SERVICE" {
    realm_id                                   = "moh_applications"        
    client_id                                  = "USER-MANAGEMENT-SERVICE" 
    # name = "test"
    access_token_lifespan                      = "1800"
    access_type                                = "CONFIDENTIAL"
    # backchannel_logout_revoke_offline_sessions = false
    backchannel_logout_session_required        = false
    client_authenticator_type                  = "client-secret"
    consent_required                           = false
    direct_access_grants_enabled               = false
    # display_on_consent_screen                  = false
    enabled                                    = true
    exclude_session_state_from_auth_response   = null
    # extra_config                               = {}
    frontchannel_logout_enabled                = false
    full_scope_allowed                         = false
    implicit_flow_enabled                      = false
    # oauth2_device_authorization_grant_enabled  = false
    service_accounts_enabled                   = true
    standard_flow_enabled                      = false
    use_refresh_tokens                         = false
    valid_redirect_uris                        = []
    web_origins                                = []
}



resource "keycloak_openid_user_session_note_protocol_mapper" "client_Host_user_session_note_mapper" {
    add_to_access_token = true
    add_to_id_token     = true
    claim_name          = "clientHost"
    claim_value_type    = "String"
    client_id           = "2ddc7173-34f3-41ff-9beb-66c7802717ce"
    name                = "Client Host"
    realm_id            = "moh_applications"
    session_note        = "clientHost"
}

resource "keycloak_openid_user_session_note_protocol_mapper" "client_id_user_session_note_mapper" {
    add_to_access_token = true
    add_to_id_token     = true
    claim_name          = "clientId"
    claim_value_type    = "String"
    client_id           = "2ddc7173-34f3-41ff-9beb-66c7802717ce"
    name                = "Client ID"
    realm_id            = "moh_applications"
    session_note        = "clientId"
}


resource "keycloak_openid_user_session_note_protocol_mapper" "client_ip_address_user_session_note_mapper" {
    add_to_access_token = true
    add_to_id_token     = true
    claim_name          = "clientId"
    claim_value_type    = "String"
    client_id           = "2ddc7173-34f3-41ff-9beb-66c7802717ce"
    name                = "Client ID"
    realm_id            = "moh_applications"
    session_note        = "clientId"
}

resource "keycloak_openid_client_default_scopes" "ums_client_default_scopes" {
  realm_id  = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
  client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
  default_scopes = [
        "email",
        "profile",
        "roles"
    ]
}
## ADDING ALL THE ROLES TO THE SERVICE ACCOUNT
#UMS ROLES
    resource "keycloak_openid_client_service_account_role" "UMS_create-user_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_create-user.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_manage-user-details_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_manage-user-details.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_manage-user-groups_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_manage-user-groups.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_manage-user-roles_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_manage-user-roles.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_manage-users_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_manage-users.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-bcer-cp_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-bcer-cp.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-eacl_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-eacl.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-fmdb_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-fmdb.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-gis_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-gis.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-hamis_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-hamis.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-hcimweb_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-hcimweb.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-hem_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-hem.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-hscis_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-hscis.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-maid-case-management-1_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-maid-case-management-1.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-miwt_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-miwt.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-mspdirect-service_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-mspdirect-service.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-pidp-service_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-pidp-service.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-plr_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-plr.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sa-dbaac-portal_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sa-dbaac-portal.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sa-hibc-service-bc-portal_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sa-hibc-service-bc-portal.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sa-sfdc_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sa-sfdc.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sat-case-management-1_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sat-case-management-1.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sat-drug-management-1_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sat-drug-management-1.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-sfds_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-sfds.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-swt_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-swt.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-client-webcaps_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-client-webcaps.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-clients_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-clients.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-events_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-events.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-groups_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-groups.name
    }
    resource "keycloak_openid_client_service_account_role" "UMS_view-users_service_account_role" {
        realm_id                = keycloak_openid_client.USER-MANAGEMENT-SERVICE.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
        role    = keycloak_role.UMS_role_view-users.name
    }

# REALM MANAGEMENT ROLES
    resource "keycloak_openid_client_service_account_role" "realm-management_manage-users_service_account_role" {
        realm_id                = keycloak_openid_client.realm-management.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.realm-management.id
        role    = keycloak_role.realm-management_role_manage-users.name
    }
    resource "keycloak_openid_client_service_account_role" "realm-management_view-clients_service_account_role" {
        realm_id                = keycloak_openid_client.realm-management.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.realm-management.id
        role    = keycloak_role.realm-management_role_view-clients.name
    }
    resource "keycloak_openid_client_service_account_role" "realm-management_view-users_service_account_role" {
        realm_id                = keycloak_openid_client.realm-management.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.realm-management.id
        role    = keycloak_role.realm-management_role_view-users.name
    }
    resource "keycloak_openid_client_service_account_role" "realm-management_view-events_service_account_role" {
        realm_id                = keycloak_openid_client.realm-management.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
    client_id               = keycloak_openid_client.realm-management.id
        role    = keycloak_role.realm-management_role_view-events.name
    }

#account roles
resource "keycloak_openid_client_service_account_role" "account_manage-account_service_account_role" {
    realm_id                = keycloak_openid_client.account.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
  client_id               = keycloak_openid_client.account.id
    role    = keycloak_role.account_role_manage-account.name
}
resource "keycloak_openid_client_service_account_role" "account_view-profile_service_account_role" {
    realm_id                = keycloak_openid_client.account.realm_id
    service_account_user_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.service_account_user_id
  client_id               = keycloak_openid_client.account.id
    role    = keycloak_role.account_role_view-profile.name
}


resource "keycloak_generic_client_role_mapper" "ums_realm-management-manage-users_client_role_mapper" {
  realm_id  = keycloak_openid_client.account.realm_id
  client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
  role_id   = keycloak_role.realm-management_role_manage-users.id 
}

resource "keycloak_generic_client_role_mapper" "ums_realm_management_query-clients_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_query-clients.id
}
resource "keycloak_generic_client_role_mapper" "ums_realm_management_query-groups_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_query-groups.id
}
resource "keycloak_generic_client_role_mapper" "ums_realm_management_query-users_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_query-users.id
}
resource "keycloak_generic_client_role_mapper" "ums_realm_management_view-clients_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_view-clients.id
}
resource "keycloak_generic_client_role_mapper" "ums_realm_management_view-users_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_view-users.id
}
resource "keycloak_generic_client_role_mapper" "ums_realm_management_view-events_client_role_mapper" {
    realm_id  = keycloak_openid_client.account.realm_id
    client_id = keycloak_openid_client.USER-MANAGEMENT-SERVICE.id
    role_id    = keycloak_role.realm-management_role_view-events.id
}

