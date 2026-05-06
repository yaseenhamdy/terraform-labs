resource "aws_instance" "bastion" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  tags = {
    Name = "bastion"
  }

  subnet_id = module.network.public_1_subnet.id

  vpc_security_group_ids =  [   aws_security_group.allow_ssh_from_any_where.id ]

  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo The server name ${self.tags.Name} and The server IP address is ${self.private_ip} "
  }

}


resource "aws_instance" "application" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  tags = {
    Name = "application"
  }

  subnet_id = module.network.private_1_subnet.id

  vpc_security_group_ids =  [   aws_security_group.allow_ssh_from_3000.id ]

  associate_public_ip_address = false

    provisioner "local-exec" {
    command = "echo The server name ${self.tags.Name} and The server IP address is ${self.private_ip} "
    when = destroy
  }

}
