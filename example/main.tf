module "cen" {
  source = "../"
  name                     = "cen-instance-name"
  new_instance             = true
  # instance_id            = "cen-xxx"
  child_instance_id        = "vpc-xxx"
  child_instance_region_id = "cn-xxx"
  attach_instance          = true
  route_table_id           = "vtb-xxx"
  cidr_block               = "x.x.x.x/x"
  publish_route_entry      = true
}
