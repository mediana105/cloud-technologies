packer {
  required_plugins {
    yandex = {
      version = "~> 1"
      source  = "github.com/hashicorp/yandex"
    }
    ansible = {
      version = "~> 1"
      source  = "github.com/hashicorp/ansible"
    }
  }
}

source "yandex" "ubuntu-nginx" {
  folder_id           = "b1ghoobqra90g1ma6c4l"
  source_image_family = "ubuntu-2204-lts"
  ssh_username        = "ubuntu"
  use_ipv4_nat        = "true"
  image_description   = "my custom ubuntu with nginx"
  image_family        = "ubuntu-2204-lts"
  image_name          = "my-ubuntu-nginx"
  subnet_id           = "e9bhm7p9oualhrvgg46k"
  disk_type           = "network-ssd"
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.ubuntu-nginx"]

  provisioner "ansible" {
    playbook_file = "ansible/site.yml"
  }
}
