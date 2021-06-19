locals {
  factors = {
    google = {
      provider_id : "google_otp"
      active : true
    }
  }
}

resource "okta_factor" "factors" {
  for_each = local.factors
  provider_id = each.value.provider_id
  active = each.value.active
}
