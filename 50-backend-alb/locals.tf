locals {
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}"
    private_subnet_ids = split("," , data.aws_ssm_parameter.private_subnet_ids.value)
    backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
    
}