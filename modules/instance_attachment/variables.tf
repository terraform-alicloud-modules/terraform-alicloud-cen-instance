variable "instance_id" {
  description = "The ID of CEN instance."
}

variable "child_instance_id" {
  description = "The ID of the child instance."
}

variable "child_instance_region_id" {
  description = "The region ID of the child instance."
}

variable "attach_instance" {
  description = "Whether to attach the child instance to one cen instance."
  default     = false
}
