data "aws_ami" "joindevops" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
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

data "aws_ssm_parameter" "mongodb_sg_id" {
  name            = "/${var.project}/${var.env}/mongodb_sg_id"
}

data "aws_ssm_parameter" "database_subnet_id" {
  name            = "/${var.project}/${var.env}/database_subnet_id"
}
