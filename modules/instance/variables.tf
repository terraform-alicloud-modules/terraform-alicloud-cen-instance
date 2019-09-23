variable "name" {
  description = "Name of the CEN instance."
}

variable "description" {
  description = "The description of the CEN instance."
  default     = ""
}

variable "new_instance" {
  description = "Whether to create a CEN instance."
  default     = false
}

