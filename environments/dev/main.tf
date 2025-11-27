
#  resource_group
module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rg     = var.rg_details
}

# module "storage_account" {
#   depends_on       = [module.resource_group]
#   source           = "../../modules/azurerm_storage_account"
#   storage_accounts = var.storage_account_details
# }

# module "key_vault" {
#   depends_on = [module.resource_group]
#   source     = "../../modules/azurerm_keyvault"
#   key_vault  = var.kv_details
# }

# # ACR

# module "acrmodule" {
#   depends_on = [module.resource_group]
#   source     = "../../modules/azurerm_acr"
#   acr_detail = var.acr_details
# }

# module "sql_server" {
#   source     = "../../modules/azurerm_database"
#   depends_on = [module.resource_group]
#   sql_server = var.sql_server_details
#   # azurerm_sql_database = var.sql_database_details
# }

# module "aks" {
#   source     = "../../modules/azurerm_aks"
#   depends_on = [module.resource_group]
#   aks        = var.aks_details
# }

# #  module "pipname" {
# #    source = "../../modules/azurerm_pip"
# #    public_ip = var.pip_details
# #  }