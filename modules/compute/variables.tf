variable "name_prefix" {
  description = "Name prefix for project."
  type        = string
}

variable "zone" {
  description = "Yandex Cloud Zone for provisioned resources."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID into which VM will be placed."
  type        = string
}

variable "image_id" {
  description = "Boot disk image id."
  type        = string
}

variable "instance_resources" {
  description = "Compute instance resources configuration."
  type = object({
    cores       = number
    memory      = number
    platform_id = string
    disk = object({
      disk_type = string
      disk_size = number
    })
  })
}

variable "service_account_id" {
  description = "ID of the IAM service account to attach to the compute instance"
  type        = string
}