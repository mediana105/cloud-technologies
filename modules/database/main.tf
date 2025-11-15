terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.170.0"
    }
  }
}

resource "yandex_ydb_database_serverless" "this" {
  name        = "${var.name_prefix}-ydb-serverless"
  location_id = var.location_id
}