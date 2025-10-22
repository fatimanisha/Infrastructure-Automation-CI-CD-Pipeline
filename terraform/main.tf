# Terraform Provider
provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "example" {
  name     = "myResourceGroup"
  location = "Canada Central"
}

# Azure Container Registry
resource "azurerm_container_registry" "example" {
  name                = "TerraformContainerDemo"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
  admin_enabled       = true
}

# AKS Cluster
resource "azurerm_kubernetes_cluster" "example" {
  name                = "myAKSCluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  dns_prefix          = "aksdns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }
}

# Output ACR and AKS details for use in the pipeline
output "acr_name" {
  value = azurerm_container_registry.example.name
}

output "aks_name" {
  value = azurerm_kubernetes_cluster.example.name
}
