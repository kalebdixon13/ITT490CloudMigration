resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-rg"
  location = "westus3"
}

resource "azurerm_service_principal" "example" {
  display_name = "example-sp"
}

resource "azurerm_kubernetes_cluster" "example_cluster" {
  name                = "aks"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "dns"

  default_node_pool {
    name            = "pool"
    node_count      = 1
    vm_size         = "standard_b2s"
    os_disk_size_gb = 30
  }
  
  service_principal {
    client_id = azurerm_service_principal.example.application_id
    client_secret = azurerm_service_principal.example.password
  }

  role_based_access_control {
    enabled = false
  }
}