# General project settings
variable "name_prefix" {
  description = "Name prefix for project."
  type        = string
  default     = "project"
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
}

variable "zone" {
  description = "(Optional) - Yandex Cloud Zone for provisoned resources."
  type        = string
  default     = "ru-central1-a"

  validation {
    condition     = contains(["ru-central1-a", "ru-central1-b", "ru-central1-c", "ru-central1-d"], var.zone)
    error_message = "Zone must be one of ru-central1-a/b/c/d"
  }
}

variable "instance_resources" {
  description = <<EOF
    (Optional) Specifies the resources allocated to an instance.
      - `platform_id`: The type of virtual machine to create.If not provided, it defaults to `standard-v3`.
      - `cores`: The number of CPU cores allocated to the instance.
      - `memory`: The amount of memory (in GiB) allocated to the instance.
      - `disk`: Configuration for the instance disk.
        - `disk_type`: The type of disk for the instance. If not provided, it defaults to `network-ssd`.
        - `disk_size`: The size of the disk (in GiB) allocated to the instance. If not provided, it defaults to 15 GiB.
  EOF

  type = object({
    platform_id = optional(string, "standard-v3")
    cores       = number
    memory      = number
    disk = optional(object({
      disk_type = optional(string, "network-ssd")
      disk_size = optional(number, 15)
    }), {})
  })
}

variable "subnets" {
  description = "Subnets definition for network module"
  type        = map(list(string))
}

variable "image_id" {
  description = "(Optional) - Boot disk image id." 
  type = string 
  default = "fd8ba9d5mfvlncknt2kd" 
}

variable "cloud_id" {
  description = "ID of the Yandex Cloud cloud"
  type        = string
}

variable "token" {
  description = "Temporary IAM token used to authenticate Terraform with Yandex Cloud."
  type        = string
}
