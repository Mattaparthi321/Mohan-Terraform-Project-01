resource "aws_instance" "webserver" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnetwipropublic.id
  vpc_security_group_ids = [aws_security_group.wipro-sg.id]
  tags = {
    Name = "tf-webserver"
  }
}