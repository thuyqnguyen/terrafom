resource "aws_db_instance" "rds" {
    identifier           = "${var.rds["identifier"]}"
    name                 = "${var.rds["name"]}"
    username             = "${var.rds["username"]}"
    password             = "${var.rds["password"]}"
    port                 = "${var.rds["port"]}"
    allocated_storage    = "${var.rds["allocated_storage"]}"
    storage_type         = "${var.rds["storage_type"]}"
    engine               = "${var.rds["engine"]}"
    engine_version       = "${var.rds["engine_version"]}"
    instance_class       = "${var.rds["instance_class"]}"
    db_subnet_group_name = "${aws_db_subnet_group.rds_subnet.name}"
    parameter_group_name = "${var.rds["param_group_name"]}"
}
