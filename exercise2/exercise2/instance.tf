resource "aws_instance" "exercise2" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
 
  key_name               = "key-aws"
  vpc_security_group_ids = ["sg-02e62f613c7343ed2"]
  tags = {
    Name    = "Exercise2"
    Project = "Terraform"
  }
}
