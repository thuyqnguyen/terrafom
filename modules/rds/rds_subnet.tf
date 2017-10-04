
resource "aws_db_subnet_group" "rds_subnet" {
   name       = "${var.rds["identifier"]}"
   subnet_ids = ["${var.rds_subnet_ids}"]

  tags {
    Name = "My RDS subnet group"
  }
}