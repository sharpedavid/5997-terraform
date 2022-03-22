#FMDB, db9dd8ab-0f38-4471-b396-e2ddac45a001
terraform import module.clients.keycloak_openid_client.FMDB  moh_applications/db9dd8ab-0f38-4471-b396-e2ddac45a001

# FMDB's role,  mohUSER 94fc2570-c6df-4b46-b734-ac2a6c8c5916  moh_applications
terraform import module.clients.keycloak_role. mohUSER  moh_applications/94fc2570-c6df-4b46-b734-ac2a6c8c5916


# FMDB's role, PSDADMIN a88f491a-3bd1-46ce-9cf6-c509f9a916f8  moh_applications
terraform import module.clients.keycloak_role.PSDADMIN  moh_applications/a88f491a-3bd1-46ce-9cf6-c509f9a916f8

#FMDB's user client role protocol mapper FMDB role. 05ef2afc-36b2-4690-8974-bb8a3b151dc1
terraform import module.clients.keycloak_openid_user_client_role_protocol_mapper.FMDB_Role_user_client_role_mapper  moh_applications/client/db9dd8ab-0f38-4471-b396-e2ddac45a001/05ef2afc-36b2-4690-8974-bb8a3b151dc1


#UMS, 2ddc7173-34f3-41ff-9beb-66c7802717ce
terraform import module.clients.keycloak_openid_client.USER-MANAGEMENT-SERVICE  moh_applications/2ddc7173-34f3-41ff-9beb-66c7802717ce


#UMS's client_Host_user_session_note_mapper, 6794b7bc-bd87-4627-815c-9963f3034d0c
terraform import module.clients.keycloak_openid_user_session_note_protocol_mapper.client_Host_user_session_note_mapper  moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/6794b7bc-bd87-4627-815c-9963f3034d0c

#UMS's client_id_user_session_note_mapper, 71a3bd01-75f8-4f66-9b4e-4be20cd292b4
terraform import module.clients.keycloak_openid_user_session_note_protocol_mapper.client_id_user_session_note_mapper  moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/71a3bd01-75f8-4f66-9b4e-4be20cd292b4


#UMS's client_ip_address_user_session_note_mapper, 71a3bd01-75f8-4f66-9b4e-4be20cd292b4
terraform import module.clients.keycloak_openid_user_session_note_protocol_mapper.client_ip_address_user_session_note_mapper  moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/71a3bd01-75f8-4f66-9b4e-4be20cd292b4


#UMS's service account: 7c5ddf30-1754-490b-ae43-ba71cd544e6b
#UMS's realm management client: 1b2ce61a-1235-4a0e-8334-1ac557151757

# ALL UMS service account's role assignment
    #  from the UMS account's roles. 
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_create-user_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/2ea1ec2c-1603-46a2-a348-6d0c7ce559da
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_manage-user-details_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/1ba3bbcb-d2db-4cb3-be33-2f88062e0dac
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_manage-user-groups_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/08b61790-4b8e-4518-bb58-1e7acb26903b
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_manage-user-roles_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/f539f4bf-ba7a-4ba3-a8d4-a47f786e205d
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_manage-users_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/04275d87-eaa5-46fa-b46a-fb57cc19dbfd
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-bcer-cp_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/484562a0-650d-4910-a371-c5ccec29487d
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-eacl_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/aaf1d410-329c-4f6b-93e0-c34b0f676bcf
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-fmdb_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/dde08fa7-a99f-4e62-9d57-c9d83a283e2f
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-gis_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/631d7ff0-b506-4152-b099-2493591b8300
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-hamis_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/671cf55c-acc5-4902-bf07-6cd79f910178
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-hcimweb_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/5f854e07-fe45-497c-85e3-a3551b88ac66
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-hem_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/e27ac762-003b-45dc-95ed-7004979d6411
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-hscis_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/fc5ce74b-a15b-46c5-8eb1-1d88d19f1d4d
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-maid-case-management-1_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/c3b946cc-a05a-498d-b57f-55bc52c71e11
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-miwt_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/1214235c-6f1c-4376-9c5f-b7155b020594
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-mspdirect-service_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/03bd41b3-3d95-4f72-a454-0a8349e53584
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-pidp-service_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/8f6a5f08-bd8c-41b4-83a3-6c08553ac98f
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-plr_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/d9c10e7f-f9ad-4d47-95ea-c1b0c801098b
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sa-dbaac-portal_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/fbd24123-a79f-49f8-96b4-5f4b1866bbd0
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sa-hibc-service-bc-portal_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/95bb3b2c-8e55-461d-9f7d-cd3580d14a0b
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sa-sfdc_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/6fc8a0df-3e8c-4ac1-9c5a-c9f9a5c1cf44
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sat-case-management-1_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/d907359b-e14a-4b06-b5af-036e98403810
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sat-drug-management-1_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/0967e9dd-54fa-42db-a8fa-794b2cb8f9d8
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-sfds_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/80baf2c1-8406-4bc5-bfee-01ca82e07db5
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-swt_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/b2796d70-cca6-47d1-845c-2411b3671b33
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-client-webcaps_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/05df8cc9-8db5-4a9b-bdae-09b9e8708fb0
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-clients_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/8742c7c0-664c-4321-8225-f70420d299f7
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-events_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/d5985777-29b3-4803-a490-a0db4d0411e6
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-groups_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/2e4a2cc3-bcd3-461b-9b5a-90d928f6f385
        terraform import module.clients.keycloak_openid_client_service_account_role.UMS_view-users_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2ddc7173-34f3-41ff-9beb-66c7802717ce/beddbeb0-650e-4bd9-8484-d05f789c61b6
    #from realm management
        terraform import module.clients.keycloak_openid_client_service_account_role.realm-management_manage-users_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/1b2ce61a-1235-4a0e-8334-1ac557151757/f3622592-630f-490c-82c0-f7fb1d3cd4d1
        terraform import module.clients.keycloak_openid_client_service_account_role.realm-management_view-clients_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/1b2ce61a-1235-4a0e-8334-1ac557151757/25f8cbcd-74fa-4f55-bfc7-2e6bbcbe84ad
        terraform import module.clients.keycloak_openid_client_service_account_role.realm-management_view-users_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/1b2ce61a-1235-4a0e-8334-1ac557151757/d50255df-43b4-4b05-9439-72c953ecbbda
        terraform import module.clients.keycloak_openid_client_service_account_role.realm-management_view-events_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/1b2ce61a-1235-4a0e-8334-1ac557151757/e7803d5a-b7e1-48bc-b8cb-f465c3a09e11
    #from account
        terraform import module.clients.keycloak_openid_client_service_account_role.account_manage-account_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2e52bc4c-f321-4bff-98d8-8ce89cd3e2e7/6bd22c76-b882-4102-80d0-65e294a74141
        terraform import module.clients.keycloak_openid_client_service_account_role.account_view-profile_service_account_role moh_applications/7c5ddf30-1754-490b-ae43-ba71cd544e6b/2e52bc4c-f321-4bff-98d8-8ce89cd3e2e7/22f2f067-d74a-4108-bf1a-eb6bffd71736


#REALM-MANAGEMENT  1b2ce61a-1235-4a0e-8334-1ac557151757
terraform import module.clients.keycloak_openid_client.realm-management  moh_applications/1b2ce61a-1235-4a0e-8334-1ac557151757
#REALM-MANAGEMENT's ROLES
    terraform import  module.clients.keycloak_role.realm-management_role_manage-users moh_applications/f3622592-630f-490c-82c0-f7fb1d3cd4d1
    terraform import  module.clients.keycloak_role.realm-management_role_view-clients moh_applications/25f8cbcd-74fa-4f55-bfc7-2e6bbcbe84ad
    terraform import  module.clients.keycloak_role.realm-management_role_view-users moh_applications/d50255df-43b4-4b05-9439-72c953ecbbda
    terraform import  module.clients.keycloak_role.realm-management_role_view-events moh_applications/e7803d5a-b7e1-48bc-b8cb-f465c3a09e11
    terraform import  module.clients.keycloak_role.realm-management_role_query-clients moh_applications/644d3737-bff6-419d-97c5-fef873aa2483
    terraform import  module.clients.keycloak_role.realm-management_role_query-users moh_applications/dc7a93f3-671d-45dc-a813-d6a0f3e9ee00
    terraform import  module.clients.keycloak_role.realm-management_role_query-groups moh_applications/bd9c60ca-63fa-4bf8-ab51-935ae4ca0d12


#account client: 2e52bc4c-f321-4bff-98d8-8ce89cd3e2e7
terraform import module.clients.keycloak_openid_client.account  moh_applications/2e52bc4c-f321-4bff-98d8-8ce89cd3e2e7

#account client roles:
terraform import  module.clients.keycloak_role.account_role_manage-account moh_applications/6bd22c76-b882-4102-80d0-65e294a74141
terraform import  module.clients.keycloak_role.account_role_view-profile moh_applications/22f2f067-d74a-4108-bf1a-eb6bffd71736
terraform import  module.clients.keycloak_role.account_role_manage-account-links moh_applications/f0d2acf5-682a-4680-bf30-a8c208324d72





#USER MANAGEMENT:
# USER-MANAGEMENT, a10391ee-437b-4fca-ab9b-cb2a30e47e5a
terraform import module.clients.keycloak_openid_client.USER-MANAGEMENT  moh_applications/a10391ee-437b-4fca-ab9b-cb2a30e47e5a

#USER-MANAGEMENT role user management admin
terraform import module.clients.keycloak_role.USER-MANAGEMENT_role_user-management-admin moh_applications/44681d4c-9f94-4f9c-be80-ae3a8c9efbd8

terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm-management-manage-users_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/f3622592-630f-490c-82c0-f7fb1d3cd4d1
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_query-clients_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/644d3737-bff6-419d-97c5-fef873aa2483
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_query-groups_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/bd9c60ca-63fa-4bf8-ab51-935ae4ca0d12
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_query-users_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/dc7a93f3-671d-45dc-a813-d6a0f3e9ee00
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_view-clients_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/25f8cbcd-74fa-4f55-bfc7-2e6bbcbe84ad
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_view-users_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/d50255df-43b4-4b05-9439-72c953ecbbda
terraform import module.clients.keycloak_generic_client_role_mapper.ums_realm_management_view-events_client_role_mapper moh_applications/client/2ddc7173-34f3-41ff-9beb-66c7802717ce/scope-mappings/1b2ce61a-1235-4a0e-8334-1ac557151757/e7803d5a-b7e1-48bc-b8cb-f465c3a09e11
