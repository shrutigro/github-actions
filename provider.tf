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
subscription_id = "381b371f-c06d-4487-a677-8d1e6f61613f"
client_id       = "03ebe487-6f3a-438c-bd4c-a4ac21d156ae"
client_secret   = "SkK8Q~v9NSdoHEmR3TvmsOFA~NJ4luL5nw0hUczF"
tenant_id       = "26e60ec1-7b36-467d-b345-01978ec43d5f"
}
