resource "alicloud_cen_route_entry" "this" {
  count          = "${var.publish_route_entry ? 1 : 0}"

  instance_id    = "${var.instance_id}"
  route_table_id = "${var.route_table_id}"
  cidr_block     = "${var.cidr_block}"
}
