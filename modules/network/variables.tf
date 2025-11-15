variable "name_prefix" {
  description = "Name prefix for project."
  type        = string
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}

variable "subnets" {
  description = "(Optional) - A map of subnet names to their CIDR block ranges."
  type        = map(list(string))
  default = {
    "private-subnet" = ["192.168.10.0/24"],
  }
}