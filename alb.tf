resource "aws_lb" "alb" {
  name               = "${var.name}-${var.env}"
  internal           = var.internal
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_alb.id]
  subnets            = local.alb_subnets

  tags = {
    Environment = "${var.name}-${var.env}"
  }
}
