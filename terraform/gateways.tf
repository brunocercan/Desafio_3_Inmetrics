resource "aws_internet_gateway" "igw_teste_brunocg" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    tags = {
      Name = "igw_teste_brunocg"
    }
  
}

resource "aws_nat_gateway" "natgw_teste_brunocgA" {
  allocation_id = "${aws_eip.elastic_ip_az1.id}"
  subnet_id = aws_subnet.public_subnet_A.id
  tags = {
    Name = "natgwA_brunocg"
  }
}

resource "aws_nat_gateway" "natgw_teste_brunocgC" {
  allocation_id = "${aws_eip.elastic_ip_az2.id}"
  subnet_id = aws_subnet.public_subnet_C.id
  tags = {
    Name = "natgwC_brunocg"
  }
}

resource "aws_eip" "elastic_ip_az1" {
  vpc = true
  tags = {
    Name = "teste_eip_az1_brunocg"
  }
}

resource "aws_eip" "elastic_ip_az2" {
  vpc = true
  tags = {
    Name = "teste_eip_az2_brunocg"
  }
}