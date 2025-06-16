resource "aws_cloudwatch_metric_alarm" "ec2_state_change" {
  alarm_name          = var.alarm_name
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "1"
  metric_name         = "StatusCheckFailed_Instance"
  namespace           = "AWS/EC2"
  period              = "60"
  statistic           = "Maximum"
  threshold           = "0"
  alarm_description   = "EC2 instance state change alarm"
  alarm_actions       = [var.sns_topic_arn]
  dimensions = {
    InstanceId = var.instance_id
  }
}
