# The s3 bucket with an assigned role to access it
module "my-s3" {
	source                         = "../modules/s3"
	bucket                         = "${var.bucket}"
}