
output "acr" {
  value = [for acr in azurerm_container_registry.acr : acr.id]
 }