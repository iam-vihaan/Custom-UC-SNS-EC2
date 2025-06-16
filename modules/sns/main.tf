resource "aws_sns_topic" "ec2-state-change-topic" {
  name = var.name
}
