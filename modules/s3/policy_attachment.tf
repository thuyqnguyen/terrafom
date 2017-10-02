resource "aws_iam_policy_attachment" "s3_bucket_policy_attachment" {
  name       = "${var.bucket["name"]}-policy-attachment"
  roles      = ["${aws_iam_role.s3_bucket_role.name}"]
  policy_arn = "${aws_iam_policy.s3_bucket_policy.arn}"
}