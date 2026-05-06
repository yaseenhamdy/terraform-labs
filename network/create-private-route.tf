resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "10.0.0.0/16"
    gateway_id  = "local"
  }

  tags = {
    Name = "lab1-private-route"
  }
}
