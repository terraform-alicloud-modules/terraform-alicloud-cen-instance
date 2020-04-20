variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = ""
}

variable "profile" {
  description = "The profile name as set in the shared credentials file. If not set, it will be sourced from the ALICLOUD_PROFILE environment variable."
  type        = string
  default     = ""
}
variable "shared_credentials_file" {
  description = "This is the path to the shared credentials file. If this is not set and a profile is specified, $HOME/.aliyun/config.json will be used."
  type        = string
  default     = ""
}

variable "skip_region_validation" {
  description = "Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet)."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the CEN instance"
}

variable "description" {
  description = "The description of the CEN instance"
  default     = "TF"
}

variable "new_instance" {
  description = "Whether to create a CEN instance."
  default     = 1
}

variable "instance_id" {
  description = "The ID of the CEN instance to attach."
  default     = ""
}

variable "child_instance_id" {
  description = "The ID of the child instance"
}

variable "child_instance_region_id" {
  description = "The region ID of the child instance"
}

variable "attach_instance" {
  description = "Whether to attach the child instance to one cen instance."
  default     = false
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

