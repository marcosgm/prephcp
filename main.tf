# Configure Azure Provider
terraform {
  required_providers {
     azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.71.0"
    } 
  }
  required_version = ">= 0.15"
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}

module "infra" {
    source = "./modules/infra-layer"
}

module "app" {
    source = "./modules/app-layer"
    app-subnetID = module.infra.app-subnetID
}