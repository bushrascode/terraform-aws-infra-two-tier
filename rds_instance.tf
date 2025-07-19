#create a RDS Database Instance
resource "aws_db_instance" "rds" {
  engine                 = "mysql"
  identifier             = "myrdsinstance"
  allocated_storage      = 5
  engine_version         = "5.7"
  instance_class         = "db.t2.micro"
  username               = var.dbs_username
  password               = var.dbs_password
  db_subnet_group_name   = aws_db_subnet_group.rds_subnet.name
  vpc_security_group_ids = [aws_security_group.db_securitygroup.id]
  skip_final_snapshot    = true
  publicly_accessible    = false
}