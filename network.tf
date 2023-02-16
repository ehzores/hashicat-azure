#provider "azurerm" {
#  features {}
#}

#terraform {
#  required_providers {
#    azurerm = {
#      source  = "hashicorp/azurerm"
#      version = ">=3.41.0"
#    }
#  }
#}

resource "azurerm_resource_group" "example" {
  name     = "my-resources"
  location = "Canada Central"
}

module "network" {
  source  = "app.terraform.io/jdm-solutions/network/azurerm"
  version = "3.5.0"
  resouce_group_name = "rf-jeff-test"
}

  subnet_service_endpoints = {
    "subnet1" : ["Microsoft.Sql"],
    "subnet2" : ["Microsoft.Sql"],
    "subnet3" : ["Microsoft.Sql"]
  }
  use_for_each = true
  tags = {
    environment = "dev"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.example]
}