locals {
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}"
    public_subnet_ids = split("," , data.aws_ssm_parameter.public_subnet_ids.value)
    frontend_alb_sg_id = data.aws_ssm_parameter.frontend_alb_sg_id.value
    frontend_alb_certificate_arn = data.aws_ssm_parameter.frontend_alb_certificate_arn.value
}