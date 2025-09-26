terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.46.0"  # Pessimistic patch constraint
    }
  }
}
