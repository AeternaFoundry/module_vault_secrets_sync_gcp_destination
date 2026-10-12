resource "vault_secrets_sync_gcp_destination" "secrets_sync_gcp_destinations" {
  for_each = var.secrets_sync_gcp_destinations

  name                               = each.value.name
  allowed_ipv4_addresses             = each.value.allowed_ipv4_addresses
  allowed_ipv6_addresses             = each.value.allowed_ipv6_addresses
  allowed_ports                      = each.value.allowed_ports
  credentials                        = each.value.credentials
  custom_tags                        = each.value.custom_tags
  disable_strict_networking          = each.value.disable_strict_networking
  global_kms_key                     = each.value.global_kms_key
  granularity                        = each.value.granularity
  identity_token_audience_wo         = each.value.identity_token_audience_wo
  identity_token_audience_wo_version = each.value.identity_token_audience_wo_version
  identity_token_key_wo              = each.value.identity_token_key_wo
  identity_token_key_wo_version      = each.value.identity_token_key_wo_version
  identity_token_ttl                 = each.value.identity_token_ttl
  kms_key_id                         = each.value.kms_key_id
  locational_kms_keys                = each.value.locational_kms_keys
  namespace                          = each.value.namespace
  project_id                         = each.value.project_id
  replica_regions                    = each.value.replica_regions
  replication_locations              = each.value.replication_locations
  secret_name_template               = each.value.secret_name_template
  service_account_email              = each.value.service_account_email
}

