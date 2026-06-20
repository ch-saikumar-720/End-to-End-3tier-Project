output "ec2_security_group_id" {
  description = "Security group ID for EC2 instances created by this module"
  value       = aws_security_group.this.id
}
