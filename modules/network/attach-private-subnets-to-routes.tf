resource "aws_route_table_association" "attach-private_1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private-route.id
}

resource "aws_route_table_association" "attach-private_2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private-route.id
}