output "vpc" {
  value = aws_vpc.main
}
output "public_1_subnet" {

  value = aws_subnet.public_1
}

output "public_2_subnet" {

  value = aws_subnet.public_2
}

output "private_1_subnet" {

  value = aws_subnet.private_1
}

output "private_2_subnet" {

  value = aws_subnet.private_2
}

