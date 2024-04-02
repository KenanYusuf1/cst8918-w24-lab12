terraform {
  required_version = ">= 0.14"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Cst8918Laba12"
    storage_account_name = "cst8918kenanstorageacct1"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true  # This line enables OIDC authentication for the backend
  }
}

provider "azurerm" {
  features {}  # You can specify additional features if needed
}
