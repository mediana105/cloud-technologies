terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "~> 0.170.0"
    }

  }
  required_version = ">= 1.0.0"
}

provider "yandex" {
  cloud_id                 = var.cloud_id
  zone                     = "ru-central1-a"
  folder_id                = var.folder_id
  token                    = var.token
}
