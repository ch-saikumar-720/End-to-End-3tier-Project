variable "cluster_role_arn" {
  description = "The ARN of the IAM role that provides permissions for the EKS cluster."
  type        = string
}

variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster."
  type        = list(string)
}

variable "node_group_role_arn" {
  description = "The ARN of the IAM role for the EKS node group."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC where resources will be created."
  type        = string
}

variable "ec2_sg_id" {
  description = "Security group ID of EC2 instances (to allow access to the cluster)"
  type        = string
}