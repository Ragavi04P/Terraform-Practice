resource "aws_key_pair" "terraform-key" {
  key_name   = "terraform-key"
  public_key = file("terraform-key.pub")
}


resource "aws_instance" "exercise3-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.terraform-key.key_name
  vpc_security_group_ids = ["sg-0e34c2d3e71d616fa"]
  tags = {
    Name    = "exercise3-Instance"
    Project = "exercise3"
  }
}


resource "aws_ebs_volume" "volume_exercise6" {
  availability_zone = var.ZONE1
  size              = 3
  tags = {
    Name = "volume_exercise6"
  }
}

resource "aws_volume_attachment" "attach_terraform" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.volume_exercise6.id
  instance_id = aws_instance.exercise3-inst.id
}

output "PublicIP" {
  value = aws_instance.exercise3-inst.public_ip
}
