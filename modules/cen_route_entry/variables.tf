variable "instance_id" {
  description = "ID of the CEN instance."
}

variable "route_table_id" {
  description = "The route table of the attached VBR or VPC."
}

variable "cidr_block" {
  description = "The destination CIDR block of the route entry to publish."
}

variable "publish_route_entry" {
  description = "Whether to publish the route entry to the cen."
  default     = false
}

