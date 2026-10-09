terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.73.0"
    }
  }
backend "azurerm" {
   
    storage_account_name             = "rewalsar"                              # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name                   = "koot"                               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                              = "terraform1.tfstate"                # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}

provider "azurerm" {
  features {}



}
