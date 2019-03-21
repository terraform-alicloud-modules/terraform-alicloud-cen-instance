output "this_instance_id" {
  description = "The ID of CEN instance"
  value       = "${module.instance.this_instance_id}"
}

output "this_child_instance_id" {
  description = "The ID of CEN child instance"
  value       = "${module.instance_attachment.this_child_instance_id}"
}

output "this_route_table_id" {
  description = "The ID of CEN instance"
  value       = "${module.cen_route_entry.this_route_table_id}"
}

output "this_cidr_block" {
  description = "The ID of CEN instance"
  value       = "${module.cen_route_entry.this_cidr_block}"
}
