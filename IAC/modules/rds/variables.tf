variable "vpc_id" {
  description = "The ID of the VPC where the RDS instance will be created."
  type        = string
}

variable "eks_sg" {
  description = "The security group ID for the EKS cluster to allow access to RDS."
  type        = string
}

variable "private_subnet_ids" {
  description = "A list of private subnet IDs where the RDS instance will be created."
  type        = list(string)
}

variable "db_password" {
  description = "The password for the RDS database instance."
  type        = string
  sensitive   = true
}