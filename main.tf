
module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  name          = var.ec2_name
  region        = var.region
}

module "sns" {
  source = "./modules/sns"
  name   = var.sns_topic_name
}

module "cloudwatch_alarm" {
  source         = "./modules/cloudwatch_alarm"
  alarm_name     = var.alarm_name
  instance_id    = module.ec2_instance.instance_id
  sns_topic_arn  = module.sns_topic.topic_arn
}
