#Syntax	Meaning
# = 3.79.0	Use only this version
# ~> 3.79.0	Use latest patch of 3.79.x (e.g., 3.79.9)
# >= 3.80.0	Use 3.80.0 or newer
# >= 3.80.0, < 4.0.0	Stay in v3.x only, avoid v4 changes

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.30.0"
    }
  }

}
provider "azurerm" {
  features {
  
  resource_group {
 prevent_deletion_if_contains_resources = false
  }
}
subscription_id = "b9d3595d-2e5f-4afb-8b6d-308d85765e95"
}
