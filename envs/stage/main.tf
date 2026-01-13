locals {
  env        = "dev"
  project    = "gcpdev"
  name_prefix = "${local.project}-${local.env}"
}

module "vpc" {
  source = "../../modules/vpc"

  vpc_name    = "${local.name_prefix}-vpc"
  subnet_name = "training-subnet"
  subnet_cidr = "10.10.0.0/24"
  region      = var.region
}

module "vm" {
  source = "../../modules/vm"

  subnet_name = module.vpc.subnet_name
  zone        = var.zone

  vms = {
    app = "e2-medium"
    db  = "e2-small"
  }
}