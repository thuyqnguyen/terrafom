resource "aws_redshift_subnet_group" "redshift_subnet" {
  name       = "${var.redshift["name"]}"
  subnet_ids = ["${var.redshift-subnet-ids}"]

  tags {
    environment = "Test"
  }
}
