module "security_group_ssh_internal" {
   source       = "git::ssh://git@github.com/vegapay/terraform-modules.git//security_groups?ref=v2.2"
   name         = "ssh-internal-sg"
   env          = var.env
   product_name = var.product_name
     tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"          = "SSH  internal"
                                      })
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 22
      to_port     = 22
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["${var.vpc_cidr_block_region_ap_south_1}"]
      description = "YBL SSH internal"
    }
  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}


module "security_group_rds_internal" {
   source       = "git::ssh://git@github.com/vegapay/terraform-modules.git//security_groups?ref=v2.2"
   name         = "rds-internal-sg"
   env          = var.env
   product_name = var.product_name
     tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"      = "RDS  internal"
                                      })
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 5432
      to_port     = 5432
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["${var.vpc_cidr_block_region_ap_south_1}"]
      description = "YBL Postgres internal"
    }
  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}


module "security_group_mongo_internal" {
   source       = "git::ssh://git@github.com/vegapay/terraform-modules.git//security_groups?ref=v2.2"
   name         = "mongo-internal-sg"
   env          = var.env
   product_name = var.product_name
     tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"      = "MongoDB  internal"
                                      })
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 27017
      to_port     = 27017
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["${var.vpc_cidr_block_region_ap_south_1}"]
      description = "YBL MongoDB internal"
    }
  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}


module "security_group_redis_internal" {
   source       = "git::ssh://git@github.com/vegapay/terraform-modules.git//security_groups?ref=v2.2"
   name         = "redis-internal-sg"
   env          = var.env
   product_name = var.product_name
     tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"      = "Redis  internal"
                                      })
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 6379
      to_port     = 6379
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["${var.vpc_cidr_block_region_ap_south_1}"]
      description = "YBL Redis internal"
    }
  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}

module "security_group_traffic_internal" {
   source       = "git::ssh://git@github.com/vegapay/terraform-modules.git//security_groups?ref=v2.2"
   name         = "internal-traffic-sg"
   env          = var.env
   product_name = var.product_name
     tags               = merge(
                                      local.global_tags,
                                      {
                                      "Creator"      		 = "devops@vegapay.tech"
                                      "Owner"		         = "devops@vegapay.tech"
                                      "Description"      = "Internal Traffic"
                                      })
  vpc_id = data.terraform_remote_state.networking_state.outputs.common_vpc_ap_south_1

  ingress_rules   = [
    {
      from_port   = 0
      to_port     = 65535
      type        = "ingress"
      protocol    = "tcp"
      cidr_blocks = ["${var.vpc_cidr_block_region_ap_south_1}"]
      description = "YBL Internal Traffic"
    }
  ]

  egress_rules    = [
    {
      from_port   = 0
      to_port     = 0
      type        = "egress"
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow all traffic"
    }
  ]
}