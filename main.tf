terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
}
provider "azurerm" {
  subscription_id = "381b371f-c06d-4487-a677-8d1e6f61613f"
  features {}
  
}


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
