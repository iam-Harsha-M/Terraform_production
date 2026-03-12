 module "msk_cluster" {
  source = "git::ssh://git@github.com/vegapay/terraform-modules//msk?ref=v2.8"
  product_name       = var.product_name
  environment        = var.env
  name               = "msk"
  kafka_version = var.msk.kafka_version
  number_of_broker_nodes = var.msk.number_of_broker_nodes
  instance_type = var.msk.instance_type
  client_subnets = [data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1a, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1b, data.terraform_remote_state.networking_state.outputs.common_private_subnet_ap_south_1c]
  security_group_ids = [module.security_group_traffic_internal.security_group_id]
  volume_size = var.msk.volume_size
  server_properties = <<EOF
    auto.create.topics.enable = true
    default.replication.factor = 3
    min.insync.replicas = 2
    num.io.threads = 8
    num.network.threads = 5
    num.partitions = 1
    num.replica.fetchers = 2
    replica.lag.time.max.ms = 30000
    socket.receive.buffer.bytes = 102400
    socket.request.max.bytes = 104857600
    socket.send.buffer.bytes = 102400
    unclean.leader.election.enable = true
    zookeeper.session.timeout.ms = 18000
    delete.topic.enable = true
  EOF
}