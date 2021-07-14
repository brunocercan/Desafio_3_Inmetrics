/*Public route table*/
resource "aws_route_table" "public_route_table" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"

    tags = {
      Name = "public_route_table_brunocg"
    }
}

resource "aws_route" "public_route" {
  route_table_id = "${aws_route_table.public_route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = "${aws_internet_gateway.igw_teste_brunocg.id}"
}

resource "aws_route_table_association" "public_route_associationA" {
  subnet_id = aws_subnet.public_subnet_A.id
  route_table_id = "${aws_route_table.public_route_table.id}"
}

resource "aws_route_table_association" "public_route_associationC" {
  subnet_id = aws_subnet.public_subnet_C.id
  route_table_id = "${aws_route_table.public_route_table.id}"
}

/* resource "aws_route_table_association" "public_route_association_db_A" {
  subnet_id = aws_subnet.private_subnet_db_A.id
  route_table_id = "${aws_route_table.public_route_table.id}"
}

resource "aws_route_table_association" "public_route_association_db_C" {
  subnet_id = aws_subnet.private_subnet_db_C.id
  route_table_id = "${aws_route_table.public_route_table.id}"
} */

/*Private route table*/
resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.natgw_teste_brunocgA.id}"
    }
    tags = {
      Name = "private_route_table_brunocg"
    }
}

resource "aws_route_table_association" "private_route_association_appA" {
  subnet_id = aws_subnet.private_subnet_app_A.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_route_association_appC" {
  subnet_id = aws_subnet.private_subnet_app_C.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_route_association_dbA" {
  subnet_id = aws_subnet.private_subnet_db_A.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_route_table_association" "private_route_association_dbC" {
  subnet_id = aws_subnet.private_subnet_db_C.id
  route_table_id = aws_route_table.private_route_table.id
}