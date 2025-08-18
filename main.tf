# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.29.0"
#     }
#   }
# }

# provider "azurerm" {
#   features {
  
#   resource_group {
#  prevent_deletion_if_contains_resources = false
#   }
# }
# subscription_id = "b9d3595d-2e5f-4afb-8b6d-308d85765e95"
# }

resource "azurerm_resource_group" "rg" {
  name     = "rg-mywebapp"
  location = "west europe"

}

resource "azurerm_service_plan" "appserviceplan" {
  name                = "linux-plan8896"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "myelearn-webapp8896"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.appserviceplan.id

  # No docker image mentioned — will be done via pipeline

  site_config {
    always_on = true
  }

  identity {
    type = "SystemAssigned"
  }

  app_settings = {
    WEBSITES_PORT = "80"
  }
}
