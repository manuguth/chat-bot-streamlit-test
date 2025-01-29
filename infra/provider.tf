provider "azurerm" {
  storage_use_azuread = true
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  # private subscription
  tenant_id       = "4df8d981-3e95-4a56-a89c-eaf106940bab"
  subscription_id = "e677579e-6ba3-45df-bc66-3fa892debb4a"
}