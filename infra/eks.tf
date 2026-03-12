module "eks_cluster" {
  source = "git::ssh://git@github.com/vegapay/terraform-modules//eks_cluster?ref=main"
  product_name       = var.product_name
  environment        = var.env
  name               = "eks"
  cluster_version = var.eks.cluster_version
  subnet_ids = [data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1a, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1b, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1c]
  security_group_ids = [module.security_group_traffic_internal.security_group_id]
  principal_arn = var.eks.principal_arn
  tags         = merge(
    local.global_tags,
    {
      "Creator" : "devops@vegapay.tech",
      "Owner"   : "devops@vegapay.tech",
    }
  )
}
module "application_ng" {
  source = "git::ssh://git@github.com/vegapay/terraform-modules//eks_node_groups?ref=v2.8"
  service_type = "application-node-group"
  cluster_name = module.eks_cluster.cluster_name
  instance_type = var.eks.node_group.application.instance_type
  ami_type = var.eks.node_group.application.ami_type
  capacity_type = var.eks.node_group.application.capacity_type
  disk_size = var.eks.node_group.application.disk_size
  subnet_ids = [data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1a, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1b, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1c]
  max_size = var.eks.node_group.application.size["max"]
  min_size = var.eks.node_group.application.size["min"]
  desired_size = var.eks.node_group.application.size["desired"]
  environment = var.env
  depends_on = [ module.eks_cluster ]
}
module "temporal_ng" {
  source = "git::ssh://git@github.com/vegapay/terraform-modules//eks_node_groups?ref=main"
  service_type = "temporal-node-group"
  cluster_name = module.eks_cluster.cluster_name
  instance_type = var.eks.node_group.temporal.instance_type
  ami_type = var.eks.node_group.temporal.ami_type
  capacity_type = var.eks.node_group.temporal.capacity_type
  disk_size = var.eks.node_group.temporal.disk_size
  subnet_ids = [data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1a, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1b, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1c]
  max_size = var.eks.node_group.temporal.size["max"]
  min_size = var.eks.node_group.temporal.size["min"]
  desired_size = var.eks.node_group.temporal.size["desired"]
  environment = var.env
  depends_on = [ module.eks_cluster ]
  taint_key = "app"
  taint_value = "temporal"
  taint_effect = "NO_SCHEDULE"
}
