resource "aws_subnet" "subnetwipropublic" {
        cidr_block = "10.0.1.0/24"
        availability_zone = "us-east-1a"
        vpc_id     = aws_vpc.Wipro-vpc.id
      
          tags = {
        Name = "witprosubnetpublic"
      }
    }


    resource "aws_subnet" "subnetwitpropravte" {
      vpc_id     = aws_vpc.Wipro-vpc.id
      cidr_block = "10.0.2.0/24"
      availability_zone = "us-east-1b"

      tags = {
        Name = "witpro-subnet-pravte"
      }
    }
