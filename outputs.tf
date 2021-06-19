output "user_schemas" {
  value = { for index, schemas in okta_user_schema.schemas : index => schemas.index }
}

output "mfa" {
  value = { for provider_id, factors in okta_factor.factors : provider_id => factors.provider_id }
}
