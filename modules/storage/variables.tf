variable "name_prefix" {
  description = "Prefix for the bucket name"
  type        = string
}

variable "access_key" {
  description = "Service account access key"
  type        = string
}

variable "secret_key" {
  description = "Service account secret key"
  type        = string
}

variable "iam_dependencies" {
  description = "List of resources from IAM module this bucket depends on"
  type        = list(any)
}
