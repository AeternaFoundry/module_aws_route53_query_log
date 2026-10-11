variable "route53_query_logs" {
  description = <<EOT
Map of route53_query_logs, attributes below
Required:
    - cloudwatch_log_group_arn
    - zone_id
EOT

  type = map(object({
    cloudwatch_log_group_arn = string
    zone_id                  = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

