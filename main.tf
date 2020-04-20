###############
# CEN instance
###############
provider "alicloud" {
  version                 = ">=1.56.0"
  profile                 = var.profile != "" ? var.profile : null
  shared_credentials_file = var.shared_credentials_file != "" ? var.shared_credentials_file : null
  region                  = var.region != "" ? var.region : null
  skip_region_validation  = var.skip_region_validation
  configuration_source    = "terraform-alicloud-modules/cen-instance"
}

module "instance" {
  source = "./modules/instance"

  new_instance = var.new_instance

  name        = var.name
  description = var.description
}

################################
# CEN child instance attachment
################################
module "instance_attachment" {
  source = "./modules/instance_attachment"

  attach_instance = var.attach_instance

  instance_id              = var.instance_id != "" ? var.instance_id : module.instance.this_instance_id
  child_instance_id        = var.child_instance_id
  child_instance_region_id = var.child_instance_region_id
}

##################
# CEN route entry
##################
module "cen_route_entry" {
  source = "./modules/cen_route_entry"

  publish_route_entry = var.publish_route_entry

  instance_id    = var.attach_instance ? module.instance_attachment.this_instance_id : var.instance_id
  route_table_id = var.route_table_id
  cidr_block     = var.cidr_block
}

