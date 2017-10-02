# outputs from module s3

output "my-s3-arn" {
  value = "${module.my-s3.s3-bucket-arn}"
}
