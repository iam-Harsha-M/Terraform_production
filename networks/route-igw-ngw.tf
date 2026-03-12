################## IGW route for internet in public subnet in Mumbai Region az a  ####################
module "internet_gateway_public_route" {
  source              = "git::ssh://git@github.com/vegapay/terraform-modules//internet_gateway_routes?ref=v1.5"
  internet_gateway_id = module.common_internet_gateway_ap_south_1.internet_gateway_id
  route_table_id      = module.common_public_route_table_ap_south_1.id
}

################## NGW route for internet in private subnet in Mumbai Region az a ####################

module "nat_gateway_private_route" {
   source             = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway_routes?ref=v1.5"
   nat_gateway_id     = module.nat_gateway_ap_south_1a.nat_gateway_id
   route_table_id     = module.common_private_route_table_ap_south_1a.id
}


################## NGW route for internet in private subnet in Mumbai Region az b ####################

module "nat_gateway_private_route_az_b" {
   source             = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway_routes?ref=v1.5"
   nat_gateway_id     = module.nat_gateway_ap_south_1b.nat_gateway_id
   route_table_id     = module.common_private_route_table_ap_south_1b.id
}


################## NGW route for internet in private subnet in Mumbai Region az c ####################

module "nat_gateway_private_route_az_c" {
   source             = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway_routes?ref=v1.5"
   nat_gateway_id     = module.nat_gateway_ap_south_1c.nat_gateway_id
   route_table_id     = module.common_private_route_table_ap_south_1c.id
}