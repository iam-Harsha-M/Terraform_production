# ################### Subnet output ####################
output "common_public_subnet_ap_south_1a" {
   value = module.common_public_subnet_a.subnet_id
}

output "common_private_subnet_ap_south_1a" {
   value = module.common_private_subnet_a.subnet_id
}

output "common_public_subnet_ap_south_1b" {
  value = module.common_public_subnet_b.subnet_id
}

output "common_private_subnet_ap_south_1b" {
   value = module.common_private_subnet_b.subnet_id
}

output "common_private_subnet_ap_south_1c" {
   value = module.common_private_subnet_c.subnet_id
}

output "common_public_subnet_ap_south_1c" {
  value = module.common_public_subnet_c.subnet_id
}
################## VPC Output ####################
output "common_vpc_ap_south_1" {
   value = module.common_vpc.vpc_id
}
