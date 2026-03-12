module "redis_parameter_group" {
  source       = "git::ssh://git@github.com/vegapay/terraform-modules//elasticache_parameter_group?ref=v2.3"
  product_name = var.product_name
  env          = var.env
  name         = "redis-group"
  family       = var.family
  parameters = [
  ]
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

