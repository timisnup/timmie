resource "aws_instance" "instance" {
  ami                         = "ami-078a289ddf4b09ae0"
  instance_type               = "t2.micro"
  key_name                    = "demokp"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.secgrp.id]
  availability_zone           = "eu-west-2a"
  subnet_id                   = aws_subnet.public-sub-1.id

  tags = {
    Name = "myinstance"
  }
}
