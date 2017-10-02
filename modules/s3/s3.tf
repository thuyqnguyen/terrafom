resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket["name"]}"
  region = "${var.bucket["region"]}"
  acl    = "private"
}
 