####################################################################################
####                                                                            ####
####                      Mumbai Region  (ap-south-1)                           ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_public_subnet_a_associate_with_public_route_table_region_ap_south_1" {
  source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association?ref=v1.5" 
  subnet_id      = module.common_public_subnet_a.subnet_id
  route_table_id = module.common_public_route_table_ap_south_1.id
  depends_on     = [
    module.common_public_route_table_ap_south_1

  ]
}

module "common_public_subnet_b_associate_with_public_route_table_region_ap_south_1" {
  source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association?ref=v1.5"
  subnet_id      = module.common_public_subnet_b.subnet_id
  route_table_id = module.common_public_route_table_ap_south_1.id
  depends_on     = [
    module.common_public_route_table_ap_south_1

  ]
}

module "common_public_subnet_c_associate_with_public_route_table_region_ap_south_1" {
  source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association?ref=v1.5" 
  subnet_id      = module.common_public_subnet_c.subnet_id
  route_table_id = module.common_public_route_table_ap_south_1.id
  depends_on     = [
    module.common_public_route_table_ap_south_1

  ]
}

module "common_private_subnet_a_associate_with_private_route_table_region_ap_south_1" {
  source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association?ref=v1.5"
  subnet_id      = module.common_private_subnet_a.subnet_id
  route_table_id = module.common_private_route_table_ap_south_1a.id
  depends_on     = [
    module.common_private_route_table_ap_south_1a
  ]
}

module  "common_private_subnet_b_associate_with_private_route_table_region_ap_south_1" {
   source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association?ref=v1.5"
   subnet_id 	  = module.common_private_subnet_b.subnet_id
   route_table_id = module.common_private_route_table_ap_south_1b.id
   depends_on     = [
    module.common_private_route_table_ap_south_1b
   ]
}



module  "common_private_subnet_c_associate_with_private_route_table_region_ap_south_1" {
   source         = "git::ssh://git@github.com/vegapay/terraform-modules//route_association"
   subnet_id 	  = module.common_private_subnet_c.subnet_id
   route_table_id = module.common_private_route_table_ap_south_1c.id
   depends_on     = [
    module.common_private_route_table_ap_south_1c
   ]
}