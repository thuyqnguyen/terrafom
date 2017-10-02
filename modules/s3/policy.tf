resource "aws_iam_policy" "s3_bucket_policy" {
  name = "${var.bucket["name"]}-policy"

  policy = <<POLICY
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*"
            ],
            "Resource": "${aws_s3_bucket.s3_bucket.arn}"
        }
    ]
}
POLICY
}
