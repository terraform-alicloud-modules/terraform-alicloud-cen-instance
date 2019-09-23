output "instance_id" {
  value = module.cen.this_instance_id
}

output "child_instance_id" {
  value = module.cen.this_child_instance_id
}

output "route_table_id" {
  value = module.cen.this_route_table_id
}

output "this_cidr_block" {
  value = module.cen.this_cidr_block
}

