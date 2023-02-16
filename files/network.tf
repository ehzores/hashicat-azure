module "network" {
  source  = "app.terraform.io/jdm-solutions/network/azurerm"
  version = "3.5.0"
  # insert required variables here
  resource_group_name = "rg-jeff-test"
}