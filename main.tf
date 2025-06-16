module "vpc" {
  source = "./modules/vpc"

  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones = var.availability_zones
}

module "ec2" {
  source        = "./modules/ec2"
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
