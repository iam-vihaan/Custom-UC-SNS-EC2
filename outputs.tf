output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2_instance.instance_id
}

output "sns_topic_arn" {
  description = "ARN of the SNS topic"
  value       = module.sns_topic.topic_arn
}

output "cloudwatch_alarm_name" {
  description = "Name of the CloudWatch alarm"
  value       = module.cloudwatch_alarm.alarm_name
}
