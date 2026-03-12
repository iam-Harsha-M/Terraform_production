module "s3_prod_vpc_logs" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4" 
  product_name       = var.product_name
  env                = var.env
  name               = "s3-vpc-logs"
  enable_versioning  = true
  tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"              = "vpc logs s3 bucket."
                                      "Service"                  = "S3_for_vpc_logs"                                                                          
                                      })
}

