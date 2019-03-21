output "this_instance_id" {
  description = "The ID of CEN instance"
  value       = "${join(",", alicloud_cen_instance.this.*.id)}"
}
