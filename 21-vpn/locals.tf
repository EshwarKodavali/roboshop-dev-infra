locals {
    ami_id = data.aws_ami.joindevops.id
    open_vpn_sg_id= data.aws_ssm_parameter.open_vpn_sg_id.value
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}-openvpn"
    public_subnet_id = split("," , data.aws_ssm_parameter.public_subnet_ids.value)[0]
}