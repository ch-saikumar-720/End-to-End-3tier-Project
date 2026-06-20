variable "ami_id" {
  description = "The ID of the AMI to use for the instance."
  type        = string
}

variable "instance_type" {
  description = "The type of instance to start."
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the instance."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet to launch the instance in."
  type        = string

}

variable "vpc_id" {
  description = "The ID of the VPC where resources will be created."
  type        = string
}