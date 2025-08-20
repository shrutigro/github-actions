terraform {
  backend "azurerm" {
    access_key = "WecCqs9I+vG+Z+85aQmFx6Yi0qB3IbqmSyLFG41IBRUfJkKjHrUAKR7gv0LVTetWa9k9y3nj2u6H+AStmTBSxA=="
    resource_group_name  = "NetworkWatcherRG"     # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "12345678910"       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "cont1" # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  

        
  }
}  
