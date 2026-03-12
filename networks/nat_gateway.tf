#################### AZ A nat gateway ###################

module "nat_gateway_ap_south_1a" {
        source        = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway?ref=v1.5"
        product_name  = var.product_name
        env           = var.env
        name          = "nat-gateway-a"
        public_subnet = module.common_public_subnet_a.subnet_id
        tags          = merge(
    		        local.global_tags,
       {
        "Creator" : "devops@vegapay.tech",
        "Owner" : "devops@vegapay.tech",
       }
  )       	
}

#################### AZ B nat gateway ######################## 

module "nat_gateway_ap_south_1b" {
     source 	      = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway?ref=v1.5"
     product_name     = var.product_name
     env              = var.env
     name             = "nat-gateway-b"
     public_subnet    = module.common_public_subnet_b.subnet_id
     tags   	      =  merge (
			  local.global_tags,
     {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
     }                                
  )
} 

#################### AZ C nat gateway ######################## 

module "nat_gateway_ap_south_1c" {
     source 	      = "git::ssh://git@github.com/vegapay/terraform-modules//nat_gateway?ref=v1.5"
     product_name     = var.product_name
     env              = var.env
     name             = "nat-gateway-c"
     public_subnet    = module.common_public_subnet_c.subnet_id
     tags   	      =  merge (
			  local.global_tags,
     {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
     }                                
  )
} 
