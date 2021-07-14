resource "aws_vpc" "vpc_teste_brunocg" {
    cidr_block = "10.0.0.0/21"
    enable_dns_hostnames = true
    tags = {
      Name = "vpc_teste_brunocg"
    }
}

resource "aws_network_acl" "acl_brunocg" {
  vpc_id = aws_vpc.vpc_teste_brunocg.id
  subnet_ids = [ "${aws_subnet.public_subnet_C.id}", "${aws_subnet.public_subnet_A.id}"]

  tags = {
    "Name" = "acl_brunocg"
  }
  
}

resource "aws_network_acl_rule" "acl_rule_brunocg" {
  network_acl_id = aws_network_acl.acl_brunocg.id
  rule_number = 100
  egress = false
  protocol = "all"
  rule_action = "allow"
  cidr_block = "0.0.0.0/0"
}

resource "aws_network_acl_rule" "acl_rule_egress_brunocg" {
  network_acl_id = aws_network_acl.acl_brunocg.id
  rule_number = 200
  egress = true
  protocol = "all"
  rule_action = "allow"
  cidr_block = "0.0.0.0/0"
}