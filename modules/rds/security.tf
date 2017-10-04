#
# SECURITY GROUP to access RDS
#

resource "aws_security_group" "rds_membership" {
  name        = "RDS ${var.rds["name"]} membership"
  description = "member of this sg is alllowed to access RDS"
  vpc_id      = "${var.rds_vpc_id}"
}

resource "aws_security_group" "rds_allowed" {
  name        = "RDS ${var.rds["name"]} allowed"
  description = "SG of the RDS ${var.rds["name"]}"
  vpc_id      = "${var.rds_vpc_id}"

  ingress {
    from_port   = "${var.rds["port"]}"
    to_port     = "${var.rds["port"]}"
    protocol    = "tcp"
    security_groups = ["${aws_security_group.rds_membership.id}"]
  }

}
