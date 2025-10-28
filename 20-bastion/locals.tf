locals {
    ami_id = data.aws_ami.joindevops.id
    bastion_sg_id= data.aws_ssm_parameter.bastion_sg_id.value
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}-bastion"
    public_subnet_ids = split("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
}