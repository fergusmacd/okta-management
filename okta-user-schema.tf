locals {
  schemas = {
    organisational_roles = {
      index : "organisationalRoles"
      title : "Organisational Roles"
      type : "string"
      description : "The additional organisational roles a user can belong to, for example, release champion, okta super admin etc"
    }
  }
}

resource "okta_user_schema" "schemas" {
  for_each = local.schemas
  index       = each.value.index
  title       = each.value.title
  type        = each.value.type
  description = each.value.description
  master      = "OKTA"
  scope       = "SELF"
}
