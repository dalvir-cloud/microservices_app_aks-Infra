

output "rgids" {
  value = {for k, v in azurerm_resource_group.rgs : k => v.id}
}

