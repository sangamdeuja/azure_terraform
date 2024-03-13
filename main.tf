terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  tags     = var.tags
  name     = var.resource_group_name
  location = var.location


}

module "storage_account" {
  source                  = "./modules/storage_account/storage_account"
  destination_folder_name = var.destination_folder_name
  location                = var.location
  resource_group_name     = var.resource_group_name
  source_folder_name      = var.source_folder_name
  storage_account_name    = var.storage_account_name

}
