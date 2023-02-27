terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
    tenant_id = "389b2929-5a30-4683-9c8c-1d21434d57e7" 
    features {} 
    skip_provider_registration = true
}