data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["679593333241"]

  filter {
    name   = "name"
    values = ["OpenVPN Access Server Community Image-8fbe3379-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_ssm_parameter" "open_vpn_sg_id" {
  name            = "/${var.project}/${var.env}/open_vpn_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name            = "/${var.project}/${var.env}/public_subnet_ids"
}
