variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "The public subnets in the VPC"
  type        = list(string)
}

variable "private_subnets" {
  description = "The private subnets in the VPC"
  type        = list(string)
}

variable "instance_ids" {
  description = "List of instance IDs to attach to the load balancer"
  type        = list(string)
}
