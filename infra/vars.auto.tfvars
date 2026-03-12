product_name             = "yesbank"
env                      = "preprod"

########### VPC Variables ###############
vpc_cidr_block_region_ap_south_1 = "10.143.0.0/21"

########### Subnet Specific Variables ############
common_subnet_availability_zone_a  = "ap-south-1a"
common_subnet_availability_zone_b  = "ap-south-1b"
common_subnet_availability_zone_c  = "ap-south-1c"
common_public_subnet_cidr_block_a  = "10.143.0.0/24"
common_public_subnet_cidr_block_b  = "10.143.1.0/24"
common_public_subnet_cidr_block_c  = "10.143.2.0/24"
common_private_subnet_cidr_block_a = "10.143.3.0/24"
common_private_subnet_cidr_block_b = "10.143.4.0/24"
common_private_subnet_cidr_block_c = "10.143.5.0/24"


ybl_ecr_repository = ["open-credit", "program-service", "account-service", "audit-service", "interest-service", "notification-service", "ledger-service", "installment-service", "dispute-service", "card-processor", "forex-program", "wallet", "prod-webpages.vegapay.tech", "pdf-generator-service", "recon-service", "credential-manager", "postpe-rewards-service", "underwriting-service", "reporting-service", "colending", "frm-service", "cohort-service", "lead-gen-service", "support-service", "utility-service", "data-wave", "los-service", "transaction-service", "authorization-service", "gift-card-service", "forex-charge", "payment-gateway", "installment-post-processing", "vegapay-delinquency", "forex-account", "transaction-post-processing", "forex-transaction", "vegapay-block-codes", "document-management-service", "html-converter-service", "emi-capri", "onboarding-service", "event-manager", "billing-service", "forex-rate-manager", "webhook-service", "rewards-service", "my-grafana", "collection-service", "new-rewards-service", "solfin-installment", "charges-service", "chronos", "backoffice-spa", "dedupe-service", "bre-service"]

eks = {
    cluster_version = "1.31"
    principal_arn = "arn:aws:iam::783764593240:user/application-user"
    node_group = {
        application = {
            instance_type = "t4g.medium"
            ami_type = "AL2_ARM_64"
            capacity_type = "ON_DEMAND"
            disk_size = "20"
            size = {
                max = "15"
                min = "10"
                desired = "10"
            }
        }
        temporal = {
            instance_type = "t3.medium"
            ami_type = "AL2_x86_64"
            capacity_type = "ON_DEMAND"
            disk_size = "20"
            size = {
                max = "5"
                min = "3"
                desired = "3"
            }
        }
    }
}
msk = {
    kafka_version = "3.5.1"
    number_of_broker_nodes = "3"
    instance_type = "kafka.t3.small"
    volume_size = "20"
}

  application_user_arns = [
    "arn:aws:iam::783764593240:user/application-user",
  ]

key_name = [
    "vault-kms",
    "pii-encryption-kms",
    "password-encryption-kms",
    "card-encryption-key-kms",
    "card-vendor-credential-encryption-kms"
  ]