resource "aws_security_group" "wipro-sg" {
  name        = "dev-vpc-sg"
  description = "Allow all inbound traffic"
  vpc_id     = aws_vpc.Wipro-vpc.id
# in coming rule
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
# out going  rule
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    }
}