terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.170.0"
    }
  }
}

resource "yandex_storage_bucket" "this" {
  bucket     = "${var.name_prefix}-terraform-bucket-${random_string.bucket_name.result}"
  access_key = var.access_key
  secret_key = var.secret_key

  depends_on = [var.iam_dependencies]
}

resource "random_string" "bucket_name" {
  length  = 8
  special = false
  upper   = false
}
