/* resource "aws_lb" "lb_brunocg" {
  name = "lb-brunocg"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.sg_brunocg.id]
  subnets = [aws_subnet.private_subnet_app_A.id, aws_subnet.private_subnet_app_C.id]

  tags = {
    Name = "lb_brunocg"
  }
}

resource "aws_lb_target_group" "tg_lb_brunocg" {
  name = "tg-lb-brunocg"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc_teste_brunocg.id

  tags = {
    Name = "tg_lb_brunocg"
  }
}

resource "aws_lb_listener" "lb_listener_brunocg" {
  load_balancer_arn = aws_lb.lb_brunocg.arn
  port = "80"
  protocol = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tg_lb_brunocg.arn
  }
}













/*resource "aws_elb" "elb_brunocg" {
  subnets = [ "${aws_subnet.public_subnet_C.id}", "${aws_subnet.public_subnet_A.id}" ]
  name = "elb-brunocg"
  security_groups = [aws_security_group.sg_brunocg.id]
  tags = {
    "Name" = "elb_brunocg"
  }

  listener {
    instance_port = 5000
    instance_protocol = "http"
    lb_port = 80
    lb_protocol = "http"

  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:5000/"
    interval            = 30
  }
  
} */


