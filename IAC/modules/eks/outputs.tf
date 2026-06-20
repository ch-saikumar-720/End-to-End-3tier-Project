output "cluster_security_group_id" {
  description = "Security group ID assigned to the EKS cluster."
  value       = aws_security_group.eks.id
}

output "cluster_name" {
  description = "EKS cluster name"
  value       = aws_eks_cluster.this.name
}

output "cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = aws_eks_cluster.this.endpoint
}

