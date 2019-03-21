resource "alicloud_cen_instance" "this" {
  count       = "${var.new_instance}"

  name        = "${var.name}"
  description = "${var.description}"
}
