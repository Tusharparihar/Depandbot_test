terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.85.0, <= 4.41.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "1.1.2"  
    }
  }
}
