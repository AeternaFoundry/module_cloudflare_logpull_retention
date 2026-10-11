variable "logpull_retentions" {
  description = <<EOT
Map of logpull_retentions, attributes below
Required:
    - zone_id
Optional:
    - flag
EOT

  type = map(object({
    zone_id = string
    flag    = optional(bool)
  }))
}

