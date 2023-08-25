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

variable "prefix" {
  default = "prephcp-infra"
}

resource "azurerm_resource_group" "infra-rg" {
  name     = "${var.prefix}-rg"
  location = "Canada Central"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-VNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.infra-rg.location
  resource_group_name = azurerm_resource_group.infra-rg.name
}

resource "azurerm_subnet" "external" {
  name                 = "${var.prefix}-external"
  resource_group_name  = azurerm_resource_group.infra-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.prefix}-internal"
  resource_group_name  = azurerm_resource_group.infra-rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}


