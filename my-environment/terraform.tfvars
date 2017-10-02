region = "us-west-2"

vpc_environment {
	name                = "thuy-vpc"
	cdir                = "10.102.0.0/16"
    multi_az            = true
}

redshift {
    name                = "thuy-redshift-cluster"
    dbname              = "testdb"
    username            = "foo"
    password            = "BarBar01"
    port                = 5439
    node_type           = "dc1.large"
    number_of_nodes     = 0
}

bucket {
    name                = "thuy-my-the-redshift-bucket"
    region              = "us-west-2"
}

