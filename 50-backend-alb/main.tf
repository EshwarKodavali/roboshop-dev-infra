resource "aws_lb" "backend_alb" {
  name               = "${local.common_name_suffix}-backend-alb"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.private_subnet_ids

  enable_deletion_protection = false


  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name_suffix}-backend-alb"
    }
  )
}

# Backend ALB listening on port number 80
resource "aws_lb_listener" "backend_alb" {
  load_balancer_arn = aws_lb.backend_alb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Hi, I am from backend ALB HTTP"
      status_code  = "200"
    }
  }
}

resource "aws_route53_record" "backend_alb" {
  zone_id = var.zone_id
  name    = "*.backend-alb-${var.env}.${var.domain_name}"
  type    = "A" # Or "AAAA" for IPv6
  
  alias {
     # These are ALB details, not our domain details
    name                   = aws_lb.backend_alb.dns_name # DNS name of the target resource
    zone_id                = aws_lb.backend_alb.zone_id  # Hosted Zone ID of the target resource
    evaluate_target_health = true # Optional: Set to true for health checks
  }
}