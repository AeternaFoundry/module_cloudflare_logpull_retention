output "logpull_retentions_id" {
  description = "Map of id values across all logpull_retentions, keyed the same as var.logpull_retentions except keys with no id are omitted"
  value       = { for k, v in cloudflare_logpull_retention.logpull_retentions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logpull_retentions_flag" {
  description = "Map of flag values across all logpull_retentions, keyed the same as var.logpull_retentions except keys with no flag are omitted"
  value       = { for k, v in cloudflare_logpull_retention.logpull_retentions : k => v.flag if v.flag != null }
}
output "logpull_retentions_zone_id" {
  description = "Map of zone_id values across all logpull_retentions, keyed the same as var.logpull_retentions except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_logpull_retention.logpull_retentions : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

