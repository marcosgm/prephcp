module "infra" {
    source = "./modules/infra-layer"
}

module "app" {
    source = "./modules/app-layer"
    app-subnetID = module.infra.app-subnetID
}