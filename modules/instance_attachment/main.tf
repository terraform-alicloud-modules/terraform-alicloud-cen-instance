resource "alicloud_cen_instance_attachment" "this" {
  count = var.attach_instance ? 1 : 0

  instance_id              = var.instance_id
  child_instance_id        = var.child_instance_id
  child_instance_region_id = var.child_instance_region_id
}

