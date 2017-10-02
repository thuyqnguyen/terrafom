This project uses terraform to create the following resources:
	An S3 bucket with private default acl
	A redshift cluster with IAM role that allows read/write access to the bucket

We also need to provison a vpc for the redshift. We query the data source to obtain all the availability zones. For each zone we create a public subnet, a private subnet. The cidr on each subnet is calculated based on the vpc cidr, and the number of the availability zones for a particular region.

There are 3 modules: vpc, s3, redshift. Information from vpc and s3 will pass on to the module redshift.

To run this project go to the folder fox/my-environment. Make change to the file provider.tf and set the proper value of the shared_credentials_file, then while you are in the folder issue these commands:
	terraform init
	terraform get
	terraform plan
	terraform apply.

The sample outputs: plan.out, apply.out are in the folder fox.

All the input parameters are in the file fox/my-environment/terraform.tfvars which can be modified as needed.

