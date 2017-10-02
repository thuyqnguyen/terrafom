# outputs from module redshift


output redshift-identifier {
   value      = "${aws_redshift_cluster.redshift-cluster.cluster_identifier}"
}

output redshift-endpoint {
   value      = "${aws_redshift_cluster.redshift-cluster.endpoint}"
}

output redshift-database-name {
   value      = "${aws_redshift_cluster.redshift-cluster.database_name}"
}
