provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "intro" {
  ami                    = "ami-03657b56516ab7912"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "key-aws"
  vpc_security_group_ids = ["sg-0e2598a67bf63050a"]
  tags = {
    Name    = "sample-Instance"
    Project = "Terraform"
  }
}
