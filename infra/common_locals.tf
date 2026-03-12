locals {
        product     = var.product_name
        env         = var.env
        global_tags = {
        Environment = local.env
        Terraform   = true
  }
}
