resource "aws_instance" "exercise2" {
	ami = var.AMIS[var.region]
	instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "key-aws"
  vpc_security_group_ids = ["sg-02e62f613c7343ed2"]
  tags = {
    Name    = "sample-Instance"
    Project = "Terraform"
  }
}