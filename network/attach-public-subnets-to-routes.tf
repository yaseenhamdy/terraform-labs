resource "aws_route_table_association" "attach-public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public-route.id
}

resource "aws_route_table_association" "attach-public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public-route.id
}