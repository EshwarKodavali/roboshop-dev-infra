# /* # Using Open source module
#  module "catalogue" {
#   source = "terraform-aws-modules/security-group/aws"

#   name        = "${local.common_name_suffix}-catalogue"
#   use_name_prefix = false
#   description = "Security group for catalogue with custom ports open within VPC, egress all traffic"
#   vpc_id      = data.aws_ssm_parameter.vpc_id.value

# } */ 

module "sg" {
  source = "git::https://github.com/EshwarKodavali/terraform-aws-sg1.git?ref=main"
  count = length(var.sg_names)
  sg_name = var.sg_names[count.index]
  vpc_id = local.vpc_id
  project_name = var.project
  env = var.env
  sg_discription = "created for ${var.sg_names[count.index]}"
}

