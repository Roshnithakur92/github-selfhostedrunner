module "networking" {
  source      = "./module/networking"
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  subnet_cidr = var.subnet_cidr
  region      = var.region
}

module "compute" {
  source    = "./module/compute"
  region    = var.region
  vpc_id    = module.networking.vpc_id
  subnet_id = module.networking.subnet_id
}
