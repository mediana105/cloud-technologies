variable "name_prefix" {
  description = "Name prefix for project."
  type        = string
}

variable "location_id" {
  description = "Region where YDB will be created."
  type        = string
  default     = "ru-central1"
}