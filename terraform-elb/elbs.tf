resource "aws_elb" "app_elb" {
  name     = "app-elb"
  internal = false

  security_groups = var.security_groups

  subnets = var.subnets

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  # TODO: Parameterize this
  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
    target              = "HTTP:80/"
    interval            = 10
  }

  instances = var.instances

  tags = var.tags
}
