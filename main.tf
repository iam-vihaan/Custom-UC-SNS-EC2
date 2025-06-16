provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  name          = "MyEC2Instance"
}

module "sns_topic" {
  source = "./modules/sns_topic"
  name   = "ec2-state-change-topic"
}

module "cloudwatch_alarm" {
  source         = "./modules/cloudwatch_alarm"
  alarm_name     = "EC2StateChangeAlarm"
  instance_id    = module.ec2_instance.instance_id
  sns_topic_arn  = module.sns_topic.topic_arn
}
