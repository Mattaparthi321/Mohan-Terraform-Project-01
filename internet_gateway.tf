    resource "aws_internet_gateway" "wiprogw" {
       vpc_id     = aws_vpc.Wipro-vpc.id
    	tags = {
            Name = "wiprogw"
        }
    }
