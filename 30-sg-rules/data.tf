data "aws_ssm_parameter" "backend_alb_sg_id" {
  name            = "/${var.project}/${var.env}/backend_alb_sg_id"
}

data "aws_ssm_parameter" "bastion_sg_id" {
  name            = "/${var.project}/${var.env}/bastion_sg_id"
}

data "aws_ssm_parameter" "mongodb_sg_id" {
  name            = "/${var.project}/${var.env}/mongodb_sg_id"
}

data "aws_ssm_parameter" "redis_sg_id" {
  name            = "/${var.project}/${var.env}/redis_sg_id"
}
data "aws_ssm_parameter" "rabbitmq_sg_id" {
  name            = "/${var.project}/${var.env}/rabbitmq_sg_id"
}
data "aws_ssm_parameter" "mysql_sg_id" {
  name            = "/${var.project}/${var.env}/mysql_sg_id"
}
data "aws_ssm_parameter" "catalogue_sg_id" {
  name            = "/${var.project}/${var.env}/catalogue_sg_id"
}