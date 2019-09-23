resource "alicloud_cen_instance" "this" {
  count = var.new_instance == false ? 0 : 1

  name        = var.name
  description = var.description
}

