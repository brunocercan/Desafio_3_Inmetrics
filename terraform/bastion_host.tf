resource "aws_instance" "ec2_public_brunocgA" {
  ami = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  key_name = "terraform-aws-brunocg"
  user_data = "${file("prepara_maquina.sh")}"
  subnet_id = "${aws_subnet.public_subnet_A.id}"
  vpc_security_group_ids = [aws_security_group.sg_brunocg.id]
  associate_public_ip_address = true

  root_block_device {
    volume_size = 8
    delete_on_termination = true
  }

    tags = {
      Name = "bastion_host_brunocg"
    }
}

output "bastion_host" {
    value = aws_instance.ec2_public_brunocgA.public_dns
}