locals {
    ami_id = data.aws_ami.joindevops.id
    mongodb_sg_id= data.aws_ssm_parameter.mongodb_sg_id.value
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}-mongodb"
    private_subnet_id = split("," , data.aws_ssm_parameter.private_subnet_id.value)[0]
}

