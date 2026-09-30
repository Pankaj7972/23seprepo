terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.73.0"
    }
  }
backend "azurerm" {
   
    storage_account_name             = "terraform.tfstate"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name                   = "tfstate098container"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                              = "prod.terraform.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}



}
