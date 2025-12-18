variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project tag name"
  default     = "autoscaling-infra"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "desired_capacity" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}
