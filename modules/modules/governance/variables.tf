variable "resource_group_id" {
  description = "Resource Group ID for policy assignment"
  type        = string
}

variable "allowed_locations" {
  description = "List of allowed Azure regions"
  type        = list(string)
}
