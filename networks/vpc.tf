######################## VPC AP-SOUTH-1 ##########################

module "common_vpc" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//vpc?ref=v1.5"
  product_name       = var.product_name
  env                = var.env
  name               = "vpc"
  cidr_block         = var.vpc_cidr_block_region_ap_south_1
  vpc_logs_s3_bucket = module.s3_prod_vpc_logs.bucket_arn 
  tags = merge(
    local.global_tags,
    {
      "Creator"    : "devops@vegapay.tech",
      "Owner"      : "devops@vegapay.tech",
    }
  )
}