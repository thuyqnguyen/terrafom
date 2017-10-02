resource "aws_redshift_cluster" "redshift-cluster" {
  cluster_identifier         = "${var.redshift.["name"]}"
  database_name              = "${var.redshift.["dbname"]}"
  master_username            = "${var.redshift.["username"]}"
  master_password            = "${var.redshift.["password"]}"
  port                       = "${var.redshift.["port"]}"
  node_type                  = "${var.redshift.["node_type"]}"
  number_of_nodes            = "${var.redshift.["number_of_nodes"]}"

  cluster_subnet_group_name  = "${aws_redshift_subnet_group.redshift_subnet.name}"
  iam_roles                  = ["${var.redshift-role-arns}"]
} 
