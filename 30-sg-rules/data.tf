data "aws_ssm_parameter" "backend_alb_sg_id" {
  name            = "/${var.project}/${var.env}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name            = "/${var.project}/${var.env}/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name            = "/${var.project}/${var.env}/mongodb_sg_id"
}