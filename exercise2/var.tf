variable REGION {
	default ="us-east-1"
}
variable ZONE1 {
	default = "us-east-2a"
}
variable AMIS {
	type = map
	default = {
	  us-east-2 ="ami-03657b56516ab7912"
	  us-east-1 ="ami-0b72821e2f351e396"
	}
}