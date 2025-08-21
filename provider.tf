

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
resource "azurerm_resource_group" "rg-b1" {
name = "shruti1"
location = "eastus"
}

resource "azurerm_resource_group" "rg-b1" {
name = "shruti1"
location = "eastus"
}
resource "azurerm_resource_group" "rg-b2" {
name = "shruti2"
location = "eastus"
}
