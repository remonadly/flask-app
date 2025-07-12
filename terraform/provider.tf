provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false  # Prevents purging soft-deleted Key Vaults upon destruction
    }
  }
  subscription_id = "cb0804c7-ccaf-443b-94d1-f328b5d502b6"
   version = "=4.14.0"  # Locks the provider to version 4.14.0
}