resource "aws_db_instance" "db_brunocg" {
    allocated_storage = 5
    max_allocated_storage = 10
    port = 3306
    engine = "mysql"
    instance_class = "db.t2.micro"
    name = "clientes_desafio1"
    username = "root"
    password = "teste35996637"
    db_subnet_group_name = "subnet_group_db"
    vpc_security_group_ids = [ aws_security_group.sg_brunocg.id ]
    skip_final_snapshot  = true
    identifier = "db-brunocg"
    multi_az = true
    publicly_accessible = true
    apply_immediately = true
    

    tags = {
      "Name" = "banco_brunocg"
    }
}

resource "aws_db_subnet_group" "subnet_group_db" {
  name = "subnet_group_db"
  subnet_ids = [aws_subnet.private_subnet_db_A.id, aws_subnet.private_subnet_db_C.id]
  depends_on = [
    aws_db_instance.db_brunocg
  ]
  tags = {
    "Name" = "brunocg_subnet_group_db"
  }
}

output "endpoint_db" {
    value = aws_db_instance.db_brunocg.endpoint
}