variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_cidr_block1" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "public_cidr_block2" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_cidr_block1" {
  description = "The CIDR block for the private subnet."
  type        = string
}

variable "private_cidr_block2" {
  description = "The CIDR block for the private subnet."
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