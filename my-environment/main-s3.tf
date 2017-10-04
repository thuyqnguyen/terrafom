# The s3 bucket with an assigned role to access it
module "my-s3" {
	source                         = "../modules/s3"
	bucket                         = "${var.bucket}"
}

#########################
# outputs from module s3
#########################

output "my-s3-arn" {
  value = "${module.my-s3.s3-bucket-arn}"
}
