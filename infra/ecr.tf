module "preprod_ybl_ecr_repository" {
  source               = "git::ssh://git@github.com/vegapay/terraform-modules//ecr?ref=v2.7"
  ecr_repository_names   = var.ybl_ecr_repository
  image_tag_mutability   = "IMMUTABLE"
  encryption_type        = "KMS"
  scan_on_push           = true
   tags                  = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}