# AWS RDS Instance
resource "aws_db_instance" "example" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  name                 = "exampledb"
  username             = "username"
  password             = "password"
  parameter_group_name = "default.mysql8.0"
}
