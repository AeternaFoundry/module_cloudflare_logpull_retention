resource "cloudflare_logpull_retention" "logpull_retentions" {
  for_each = var.logpull_retentions

  zone_id = each.value.zone_id
  flag    = each.value.flag
}

