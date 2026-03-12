####################################################################################
####                                                                            ####
####                                                                            ####
####                        Mumbai Region  (ap-south-1a)                        ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_private_route_table_ap_south_1a" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//route_table?ref=v1.5" 
  product_name = var.product_name
  env          = var.env
  name         = "private-route-table-a"
  vpc_id       = module.common_vpc.vpc_id
  tags         = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}

module "common_public_route_table_ap_south_1" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//route_table?ref=v1.5" 
  product_name = var.product_name
  env          = var.env
  name         = "public-route-table"
  vpc_id       = module.common_vpc.vpc_id
  tags         = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}

####################################################################################
####                                                                            ####
####                                                                            ####
####                        Mumbai Region  (ap-south-1b)                        ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_private_route_table_ap_south_1b" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//route_table?ref=v1.5"
  product_name = var.product_name
  env          = var.env
  name         = "private-route-table-b"
  vpc_id       = module.common_vpc.vpc_id
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}

####################################################################################
####                                                                            ####
####                                                                            ####
####                        Mumbai Region  (ap-south-1c)                        ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_private_route_table_ap_south_1c" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//route_table?ref=v1.5"
  product_name = var.product_name
  env          = var.env
  name         = "private-route-table-c"
  vpc_id       = module.common_vpc.vpc_id
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}