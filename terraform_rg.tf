# Configure the Microsoft Azure Provider
provider "azurerm" {
export ARM_SUBSCRIPTION_ID="27650f62-c9b6-4fa6-b48b-31df9d5f0816"
export ARM_CLIENT_ID="32fddab2-32ab-4f0c-ada7-963a052ad073"
export ARM_CLIENT_SECRET="d7d63909-a77b-4724-ba16-788c02857398"
export ARM_TENANT_ID="72f988bf-86f1-41af-91ab-2d7cd011db47"
}

# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "eastus"

    tags {
        environment = "Terraform Demo"
    }
}

