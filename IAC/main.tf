module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = module.vpc.public_subnet_ids[0]
  vpc_id        = module.vpc.vpc_id
}

module "rds_instance" {
  source             = "./modules/rds"
  vpc_id             = module.vpc.vpc_id
  eks_sg             = module.eks_cluster.cluster_security_group_id
  private_subnet_ids = module.vpc.private_subnet_ids
  db_password        = var.db_password
}

module "vpc" {
  source                     = "./modules/vpc"
  cidr_block                 = var.cidr_block
  public_cidr_block1         = var.public_cidr_block1
  public_cidr_block2         = var.public_cidr_block2
  private_cidr_block1        = var.private_cidr_block1
  private_cidr_block2        = var.private_cidr_block2

  availability_zone_public1  = var.availability_zone_public1
  availability_zone_public2  = var.availability_zone_public2
  availability_zone_private1 = var.availability_zone_private1
  availability_zone_private2 = var.availability_zone_private2

}

module "eks_cluster" {
  source              = "./modules/eks"
  cluster_name        = "ecommerce-cluster"
  node_group_role_arn = module.iam.eks_node_group_role_arn
  cluster_role_arn    = module.iam.eks_cluster_role_arn
  subnet_ids          = module.vpc.private_subnet_ids
  vpc_id              = module.vpc.vpc_id
  ec2_sg_id           = module.ec2_instance.ec2_security_group_id
}

module "ecr" {
  source = "./modules/ecr"
}

module "iam" {
  source = "./modules/iam"
}