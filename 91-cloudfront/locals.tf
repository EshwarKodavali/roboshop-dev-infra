locals {
    common_tags ={
        Project = var.project
        Environmet = var.env
        Terraform = "true"
    }
    common_name_suffix = "${var.project}-${var.env}"

    cachingDisabled = data.aws_cloudfront_cache_policy.cachingDisabled.id
    cachingOptimised = data.aws_cloudfront_cache_policy.cachingOptimised.id
    cdn_certificate_arn = data.aws_ssm_parameter.certificate_arn.value
    
}