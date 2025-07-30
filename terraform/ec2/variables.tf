variable "subnet_id" {
  description = "ID of an existing subnet in your VPC"
  type        = string
}

variable "security_group_id" {
  description = "ID of an existing security group (should allow HTTP and RDP)"
  type        = string
}

variable "key_name" {
  description = "Name of your existing EC2 key pair"
  type        = string
}
variable "ami_id" {
  description = "Name of AMI ID"
  type        = string
}
