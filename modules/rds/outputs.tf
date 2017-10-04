# outputs from module rds

output rds-id {
   value      = "${aws_db_instance.rds.id}"
}

output rds-endpoint {
   value      = "${aws_db_instance.rds.endpoint}"
}

output rds-name {
   value      = "${aws_db_instance.rds.name}"
}