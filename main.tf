module "network" {
  source      = "./modules/network"
  name_prefix = var.name_prefix
  subnets     = var.subnets
  zone        = var.zone
}

module "compute" {
  source             = "./modules/compute"
  name_prefix        = var.name_prefix
  zone               = var.zone
  image_id           = var.image_id
  instance_resources = var.instance_resources
  subnet_id          = module.network.subnet_id
  service_account_id = module.iam.service_account_id
}

module "database" {
  source      = "./modules/database"
  name_prefix = var.name_prefix
}


module "storage" {
  source              = "./modules/storage"
  name_prefix     = var.name_prefix
  access_key      = module.iam.access_key
  secret_key      = module.iam.secret_key
  iam_dependencies = [module.iam.service_account_id] 
}

module "iam" {
  source      = "./modules/iam"
  folder_id   = var.folder_id
  name_prefix = var.name_prefix
}
