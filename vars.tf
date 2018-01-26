variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}

variable "aws_vpc" {
  description = "The name of the vpc to use "
  default     = "vpc-72fc5d0a"
}

variable "aws_az" {
  description = "The name of the AZ to use "
  default     = "us-east-1a"
}
/*
variable "aws_subnetid" {
  description = "The name of the subnetid to use "
  default     = "subnet-db26cef4"
}
*/

variable "ec2_instance_type" {
  description = "The instance type for EC2 "
  default     = "t2.micro"
}

variable "chefserver" {
  description = "IP Address of the Chef server "
  default     = "172.31.88.48"
}

variable "chefserverfqdn" {
  description = "fqdn of the Chef server "
  default     = "localhost.localdomain"
}

variable "instancelist" {
  description = "Count of the Chef nodes"
  type = "list"
  default = ["nodeA","nodeB","nodeC","nodeD"]
}

