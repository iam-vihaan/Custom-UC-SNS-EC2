variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-09e6f87a47903347c" # Replace with your preferred AMI
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "MyEC2Instance"
}

variable "sns_topic_name" {
  description = "Name of the SNS topic"
  type        = string
  default     = "ec2-state-change-topic"
}

variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = "EC2StateChangeAlarm"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for the subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}
