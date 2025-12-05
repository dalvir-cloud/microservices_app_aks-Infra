terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.54.0"
    }
  }
backend "azurerm" {
resource_group_name = "veersingh_rg"
storage_account_name = "veerstg1"
container_name = "veerblob"
key = "terraform.tfstate"
}
}

provider "azurerm" {
  features {}
    subscription_id = "77312bdf-fff4-4e77-9d06-5e69870a682c"
}
