resource "aws_route" "route" {
  gateway_id                = "${var.gateway_id}"
  instance_id               = "${var.instance_id}"
  route_table_id            = "${var.route_table_id}"
  nat_gateway_id            = "${var.nat_gateway_id}"
  network_interface_id      = "${var.network_interface_id}"
  destination_cidr_block    = "${var.destination_cidr_block}"
  egress_only_gateway_id    = "${var.egress_only_gateway_id}"
  vpc_peering_connection_id = "${var.vpc_peering_connection_id}"

  lifecycle {
    create_before_destroy = true
  }
}
