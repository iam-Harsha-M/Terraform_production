module "kms_keys" {
  source                = "git::ssh://git@github.com/vegapay/terraform-modules//kms?ref=v3.0"
  key_names             = var.key_name 
  application_user_arns = var.application_user_arns
}