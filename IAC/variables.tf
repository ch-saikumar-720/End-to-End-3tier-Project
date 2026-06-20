variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "The ID of the AMI to use for the instance."
  type        = string
}


variable "instance_type" {
  description = "The type of instance to start."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
}

variable "availability_zone_public1" {
  description = "The first availability zone for the public subnet."
  type        = string
}
variable "availability_zone_public2" {
  description = "The second availability zone for the public subnet."
  type        = string
}
variable "availability_zone_private1" {
  description = "The first availability zone for the private subnet."
  type        = string
}
variable "availability_zone_private2" {
  description = "The second availability zone for the private subnet."
  type        = string
}

variable "db_password" {
  description = "The password for the RDS database instance."
  type        = string
  sensitive   = true
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = ""
}

variable "availability_zone_public" {
  description = "The availability zone for the public subnet."
  type        = string
  default     = ""
}

variable "availability_zone_private" {
  description = "The availability zone for the private subnet."
  type        = string
  default     = ""
}

variable "public_cidr_block1" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = ""
}

variable "public_cidr_block2" {
  description = "The CIDR block for the public subnet."
  type        = string
  default     = ""
}

variable "private_cidr_block1" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = ""
}

variable "private_cidr_block2" {
  description = "The CIDR block for the private subnet."
  type        = string
  default     = ""
}

