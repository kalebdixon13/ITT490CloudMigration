terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.45.0"
    }
  }
}

provider "azurerm" {
    tenant_id = "" 
    features {} 
    skip_provider_registration = true
}