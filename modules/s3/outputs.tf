# outputs from module s3

output s3-bucket-arn {
   value      = "${aws_s3_bucket.s3_bucket.arn}"
}

output s3-bucket-role-arn {
   value      = "${aws_iam_role.s3_bucket_role.arn}"
}