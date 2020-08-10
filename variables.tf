variable "region" {
  description = "The region used to launch this module resources."
  default     = ""
}

variable "name" {
  description = "Name of the CEN instance"
}

variable "description" {
  description = "The description of the CEN instance"
  default     = "TF"
}

variable "create_cen" {
  description = "Controls if CEN should be created"
  type        = bool
  default     = true
}

// Tags
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "cen_tags" {
  description = "Additional tags for the CEN"
  type        = map(string)
  default     = {}
}

# VPCs created in an account different from the CEN instance must have the vpc_owner_id specified
variable "instances_attachment" {
  description = "List of VPCs to grant access to the Alibaba account as the CEN"
  type        = list(object({ vpc_id = string, vpc_region_id = string, vpc_owner_id = string }))
  default     = []
}