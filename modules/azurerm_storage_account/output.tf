output "stgids" {
  value = { for k, v in azurerm_storage_account.storage_account : k => v.id }
}