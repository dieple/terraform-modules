# Cross-Account VPC Peering Connection
resource "aws_vpc_peering_connection_accepter" "vpc_p_con_acptr" {
  provider                  = "${var.provider_account}"
  auto_accept               = "${var.auto_accept}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  tags {
    Side = "${var.accept_status}"
  }
}