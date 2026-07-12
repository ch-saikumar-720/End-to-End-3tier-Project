resource "aws_security_group" "eks" {
  name        = "3-tier-cluster-sg"
  description = "EKS cluster security group"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow all within the security group"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  ingress {
    description     = "Allow traffic from EC2 instances SG"
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [var.ec2_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "3-tier-cluster-sg"
  }
}

resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = var.cluster_role_arn
  version  = "1.33"

  vpc_config {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.eks.id]
  }

  tags = {
    Name = "3-tier-cluster"
  }
}

resource "aws_eks_node_group" "this" {

  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "3tier-node-group"

  node_role_arn = var.node_group_role_arn

  subnet_ids = var.subnet_ids

  instance_types = ["t3.micro"]

  scaling_config {
    desired_size = 5
    max_size     = 6
    min_size     = 2
  }

}
