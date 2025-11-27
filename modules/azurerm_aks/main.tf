resource "azurerm_kubernetes_cluster" "example" {
    for_each = var.aks
  name                = each.value.aks_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  dns_prefix          = each.value.dns_prefix

  default_node_pool {
    name       = each.value.nodepool_name
    node_count = each.value.node_count
    vm_size    = each.value.vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

# output "client_certificate" {
#   value     = azurerm_kubernetes_cluster.example.kube_config[0].client_certificate
#   sensitive = true
# }

# output "kube_config" {
#   value = azurerm_kubernetes_cluster.example.kube_config_raw

#   sensitive = true
# }