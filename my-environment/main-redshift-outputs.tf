# outputs from module redshift

output "my-redshift-identifier" {
  value = "${module.my-redshift.redshift-identifier}"
}

output "my-redshift-endpoint" {
   value = "${module.my-redshift.redshift-endpoint}"
}

output "redshift-database-name" {
	value = "${module.my-redshift.redshift-database-name}"
}
