resource "azurerm_container_registry" "acr" {
  for_each = var.acr_detail
  name                = each.value.acr_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  sku                 = each.value.sku
}
