module "s3_account_proofs" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "account-proofs"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_api_uploaded_files" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "api-uploaded-files"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_bill_pdfs" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "bill-pdfs"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_bulk_upload" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "bulk-upload"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_customer_selfie" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "customer-selfie"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_dispute_proofs" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "dispute-proofs"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_image_assets" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "image-assets"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_keystore_bucket" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "keystore-bucket"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_los_files" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "los-files"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_mcc_files" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "mcc-files"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_program_policy" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "program-policy"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_reports" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "reports"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_server_files" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "server-files"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_tax_invoice_pdfs" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "tax-invoice-pdfs"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_underwriting" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "underwriting"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}

module "s3_card_private_key" {
  source             = "git::ssh://git@github.com/vegapay/terraform-modules//s3/s3_data?ref=v1.4"
  product_name       = var.product_name
  env                = var.env
  name               = "card-private-key"
  enable_versioning  = true
  tags               = merge(
                            local.global_tags,
                            {
                              "Creator" = "devops@vegapay.tech",
                              "Owner"   = "devops@vegapay.tech"
                            }
                          )
}