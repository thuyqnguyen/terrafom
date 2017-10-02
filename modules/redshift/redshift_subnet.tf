resource "aws_redshift_subnet_group" "redshift_subnet" {
  name       = "${var.redshift["name"]}"
  subnet_ids = ["${var.redshift-security-subnet-ids}"]

  tags {
    environment = "Test"
  }
}
