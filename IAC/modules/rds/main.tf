resource "aws_db_instance" "mysql" {

  identifier           = "ecommerce"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t4g.micro"
  allocated_storage    = 20
  db_name              = "ecommerce"
  username             = "admin"
  password             = var.db_password
  multi_az             = false
  publicly_accessible  = false
  db_subnet_group_name = aws_db_subnet_group.this.name
  vpc_security_group_ids = [

    aws_security_group.rds.id

  ]
  skip_final_snapshot = true

}

resource "aws_db_subnet_group" "this" {

  name = "rds-subnet-group"

  subnet_ids = var.private_subnet_ids

}

resource "aws_security_group" "rds" {

  name   = "rds-sg"
  vpc_id = var.vpc_id

  ingress {

    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"
    security_groups = [

      var.eks_sg
    ]
  }

}