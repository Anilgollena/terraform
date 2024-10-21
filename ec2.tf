resource "aws_instance" "demoinstance" {
  ami                         = "ami-0e54eba7c51c234f6"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "anil"
  vpc_security_group_ids      = ["${aws_security_group.demosg.id}"]
  subnet_id                   = aws_subnet.demosubnet.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")

  tags = {
    Name = "my public instance"
  }
}
