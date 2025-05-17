     # Create Route Table
      resource "aws_route_table" "wipro-public" {
          vpc_id     = aws_vpc.Wipro-vpc.id

          tags = {
            Name = "wipro-public-route-table"
        }
      
      }
        # Create Route in the Route table for public connection 
      resource "aws_route" "wipro-public-route" {

        route_table_id = aws_route_table.wipro-public.id
        destination_cidr_block = "0.0.0.0/24"
        gateway_id = aws_internet_gateway.wiprogw.id
        
      }
      
    # Assocation Route table with subnets 
      resource "aws_route_table_association" "wipro-public-route-assocition" {
        route_table_id = aws_route_table.wipro-public.id
        subnet_id = aws_subnet.subnetwipropublic.id
      }