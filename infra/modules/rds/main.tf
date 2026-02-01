resource "aws_db_instance" "postgres" {
  engine = "postgres"
  engine_version = "15"
  instance_class = "db.t3.medium"
  allocated_storage = 50
  max_allocated_storage = 200
  multi_az = true
  iam_database_authentication_enabled = true
}