locals {
  common_name_suffix = "${var.project}-${var.env}" # roboshop-dev
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}