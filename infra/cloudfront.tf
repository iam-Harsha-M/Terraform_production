# module "cloudfront_back_office_ybl_preprod" {
#   source       = "git::ssh://git@github.com/vegapay/terraform-modules//cloudfront?ref=v3.3"
#   project_name = "ybl-preprod" 
#   website_name = "back-office"
#   cache_behavior_path = "/assets/*"
#   domain_name  = "back-office-uat.yesbank.in"
#   certificate_arn = "arn:aws:acm:us-east-1:783764593240:certificate/1f3c9df7-64ff-425e-ac5b-9a4ff45f3110"
# }