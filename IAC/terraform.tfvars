####EC2##
ami_id        = "ami-0b6d9d3d33ba97d99"
instance_type = "t2.micro"
key_name      = "jump-server"

####RDS##
db_password = "mysecurepassword"

####VPC##
cidr_block                = "10.0.0.0/16"
availability_zone_private1 = "us-east-1a"
availability_zone_private2 = "us-east-1b"
availability_zone_public1  = "us-east-1b"
availability_zone_public2  = "us-east-1a"

public_cidr_block1        = "10.0.1.0/24"
public_cidr_block2        = "10.0.2.0/24"
private_cidr_block1       = "10.0.3.0/24"
private_cidr_block2       = "10.0.4.0/24"

####EKS##
aws_region = "us-east-1"
