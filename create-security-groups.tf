resource "aws_security_group" "allow_ssh_from_any_where" {
  name        = "allow_ssh_from_any_where"
  description = "allow_ssh_from_any_where"
  vpc_id      = module.network.vpc.id

  tags = {
    Name = "allow_ssh_from_any_where"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_from_anywhere" {
  security_group_id = aws_security_group.allow_ssh_from_any_where.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}




resource "aws_security_group" "allow_ssh_from_3000" {
  name        = "allow_ssh_from_3000"
  description = "allow_ssh_from_3000"
  vpc_id      = module.network.vpc.id

  tags = {
    Name = "allow_ssh_from_3000"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh_from_vpc" {
  security_group_id = aws_security_group.allow_ssh_from_3000.id
  cidr_ipv4         = module.network.vpc.cidr_block
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "port_3000_from_vpc" {
  security_group_id = aws_security_group.allow_ssh_from_3000.id
  cidr_ipv4         = module.network.vpc.cidr_block
  from_port         = 3000
  ip_protocol       = "tcp"
  to_port           = 3000
}
