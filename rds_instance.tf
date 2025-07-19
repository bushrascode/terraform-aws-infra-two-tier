#create a RDS Database Instance
resource "aws_db_instance" "rds" {
  engine                 = "mysql"
  identifier             = "myrdsinstance"
  allocated_storage      = 10
  storage_type           = "gp2"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"
  parameter_group_name = "default.mysql8.0"
  username               = var.dbs_username
  password               = var.dbs_password
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.name
  vpc_security_group_ids = [aws_security_group.db_securitygroup.id]
  skip_final_snapshot    = true
  publicly_accessible    = false
}