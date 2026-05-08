####################################################################################
####                                                                            ####
####                                                                            ####
####                     Hyderabad  (ap-south-2)                                   ####
####                                                                            ####
####                                                                            ####
####################################################################################

module "common_public_subnet_a" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "public-subnet-a"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_a
  cidr_block              = var.common_public_subnet_cidr_block_a
  map_public_ip_on_launch = "true"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/elb" : "1",
    }
  )
}

module "common_public_subnet_b" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "public-subnet-b"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_b
  cidr_block              = var.common_public_subnet_cidr_block_b
  map_public_ip_on_launch = "true"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/elb" : "1",
    }
  )
}

module "common_public_subnet_c" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "public-subnet-c"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_c
  cidr_block              = var.common_public_subnet_cidr_block_c
  map_public_ip_on_launch = "true"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/elb" : "1",
    }
  )
}

module "common_private_subnet_a" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "private-subnet-a"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_a
  cidr_block              = var.common_private_subnet_cidr_block_a
  map_public_ip_on_launch = "false"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/internal-elb" : "1",

    }
  )
}

module "common_private_subnet_b" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "private-subnet-b"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_b
  cidr_block              = var.common_private_subnet_cidr_block_b
  map_public_ip_on_launch = "false"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/internal-elb" : "1",
    }
  )
}

module "common_private_subnet_c" {
  source                  = "git::ssh://git@github.com/vegapay/terraform-modules//subnet?ref=v1.5"
  product_name            = var.product_name
  env                     = var.env
  name                    = "private-subnet-c"
  vpc_id                  = module.common_vpc.vpc_id
  availability_zone       = var.common_subnet_availability_zone_c
  cidr_block              = var.common_private_subnet_cidr_block_c
  map_public_ip_on_launch = "false"
  tags = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
      "kubernetes.io/role/internal-elb" : "1",

    }
  )
}