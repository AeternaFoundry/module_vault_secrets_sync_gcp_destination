variable "secrets_sync_gcp_destinations" {
  description = <<EOT
Map of secrets_sync_gcp_destinations, attributes below
Required:
    - name
Optional:
    - allowed_ipv4_addresses
    - allowed_ipv6_addresses
    - allowed_ports
    - credentials
    - custom_tags
    - disable_strict_networking
    - global_kms_key
    - granularity
    - identity_token_audience_wo
    - identity_token_audience_wo_version
    - identity_token_key_wo
    - identity_token_key_wo_version
    - identity_token_ttl
    - kms_key_id
    - locational_kms_keys
    - namespace
    - project_id
    - replica_regions
    - replication_locations
    - secret_name_template
    - service_account_email
EOT

  type = map(object({
    name                               = string
    allowed_ipv4_addresses             = optional(set(string))
    allowed_ipv6_addresses             = optional(set(string))
    allowed_ports                      = optional(set(number))
    credentials                        = optional(string)
    custom_tags                        = optional(map(string))
    disable_strict_networking          = optional(bool)
    global_kms_key                     = optional(string)
    granularity                        = optional(string)
    identity_token_audience_wo         = optional(string)
    identity_token_audience_wo_version = optional(number)
    identity_token_key_wo              = optional(string)
    identity_token_key_wo_version      = optional(number)
    identity_token_ttl                 = optional(number)
    kms_key_id                         = optional(string)
    locational_kms_keys                = optional(map(string))
    namespace                          = optional(string)
    project_id                         = optional(string)
    replica_regions                    = optional(map(string))
    replication_locations              = optional(set(string))
    secret_name_template               = optional(string)
    service_account_email              = optional(string)
  }))
}

