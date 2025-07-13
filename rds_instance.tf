#create a RDS Database Instance
# resource "aws_db_instance" "rds" {
#   engine               = "mysql"
#   identifier           = "myrdsinstance"
#   allocated_storage    =  5
#   engine_version       = "5.7"
#   instance_class       = "db.t2.micro"
#   username             = "myrdsuser"
#   password             = "myrdspassword"
#   parameter_group_name = "default.mysql5.7"
#   vpc_security_group_ids = aws_security_group.rds_sg.id // need to create 
#   skip_final_snapshot  = true
#   publicly_accessible =  false
# }