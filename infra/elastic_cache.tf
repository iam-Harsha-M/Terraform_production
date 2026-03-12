module "redis" {
  source                       = "git::ssh://git@github.com/vegapay/terraform-modules//elastic_cache?ref=v2.4"
  product_name                 = var.product_name
  env                          = var.env
  name                         = "redis"
  description                  = "Elastic Cache Redis"
  engine                       = "redis"
  engine_version               = "7.1"
  apply_immediately            = "true"
  replicas_per_node_group      = "1"
  node_type                    = "cache.t4g.micro"
  parameter_group_name         = module.redis_parameter_group.group_name
  transit_encryption_enabled   = true
  at_rest_encryption_enabled   = true
  port                         = 6379
  multi_az_enabled             = false
  automatic_failover_enabled   = false
  auto_minor_version_upgrade   = true
  elasticache_subnet_group_name = module.redis_subnet_group.group_name
  log_delivery_configurations  = []
  security_group_ids           = [module.security_group_redis_internal.security_group_id]
  tags                         = merge(
                                     local.global_tags,
                                     {
                                       "Creator" = "devops@vegapay.tech",
                                       "Owner"   = "devops@vegapay.tech"
                                     }
                                   )
}
