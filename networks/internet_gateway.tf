##########################################################
#							                                          #
#		Hyderabad (Ap-south-2)			                            #
#	         		                                          #
#						                                            #		
##########################################################

module "common_internet_gateway_ap_south_1" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//internet_gateway?ref=v1.5"
  product_name = var.product_name
  env          = var.env
  name         = "igw"
  vpc_id       = module.common_vpc.vpc_id
  tags         = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}
