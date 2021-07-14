/* subnets publicas */
resource "aws_subnet" "public_subnet_A" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true

    tags = {
      Name = "public_subnet_a_brunocg"
    }
}

resource "aws_subnet" "public_subnet_C" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = true

    tags = {
      Name = "public_subnet_c_brunocg"
    }
}


/* subnets privadas */
resource "aws_subnet" "private_subnet_app_A" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.4.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
      Name = "private_subnet_app_a_brunocg"
    }
}

resource "aws_subnet" "private_subnet_app_C" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.5.0/24"
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = true
    tags = {
      Name = "private_subnet_app_c_brunocg"
    }
}

resource "aws_subnet" "private_subnet_db_A" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.6.0/24"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = false
    tags = {
      Name = "private_subnet_db_a_brunocg"
    }
}

resource "aws_subnet" "private_subnet_db_C" {
    vpc_id = "${aws_vpc.vpc_teste_brunocg.id}"
    cidr_block = "10.0.7.0/24"
    availability_zone = "us-east-1c"
    map_public_ip_on_launch = false
    tags = {
      Name = "private_subnet_db_c_brunocg"
    }
}