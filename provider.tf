terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 1.00"
}

provider "yandex" {
  zone                     = "ru-central1-a"
  folder_id                = "b1ghoobqra90g1ma6c4l"
}

provider "random" {
}
