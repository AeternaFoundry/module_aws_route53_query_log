output "route53_query_logs_id" {
  description = "Map of id values across all route53_query_logs, keyed the same as var.route53_query_logs"
  value       = { for k, v in aws_route53_query_log.route53_query_logs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_query_logs_arn" {
  description = "Map of arn values across all route53_query_logs, keyed the same as var.route53_query_logs"
  value       = { for k, v in aws_route53_query_log.route53_query_logs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_query_logs_cloudwatch_log_group_arn" {
  description = "Map of cloudwatch_log_group_arn values across all route53_query_logs, keyed the same as var.route53_query_logs"
  value       = { for k, v in aws_route53_query_log.route53_query_logs : k => v.cloudwatch_log_group_arn if v.cloudwatch_log_group_arn != null && length(v.cloudwatch_log_group_arn) > 0 }
}
output "route53_query_logs_zone_id" {
  description = "Map of zone_id values across all route53_query_logs, keyed the same as var.route53_query_logs"
  value       = { for k, v in aws_route53_query_log.route53_query_logs : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

