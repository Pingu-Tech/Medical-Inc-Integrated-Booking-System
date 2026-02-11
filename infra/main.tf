provider "aws" {
  region = "ap-southeast-1" # Singapore Region
}

resource "aws_db_instance" "medical_booking_rds" {
  allocated_storage    = 50
  engine               = "postgres"
  engine_version       = "15.3"
  instance_class       = "db.t3.medium"
  db_name              = "medical_prod_db"
  username             = var.db_admin_user
  password             = var.db_admin_password
  parameter_group_name = "default.postgres15"
  skip_final_snapshot  = true
  multi_az             = true # Ensuring high availability for clinics
}