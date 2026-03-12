module "redis_subnet_group" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//elasticache_subnet_group?ref=v2.3"
  product_name = var.product_name
  env          = var.env
  name         = "redis-private"
  subnets      = [data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1a, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1b, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1c]
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}
