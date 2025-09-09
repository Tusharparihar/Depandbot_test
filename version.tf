terraform {
  required_version = ">= 1.7.0"

  required_providers {
    # Pinned - should be lower than latest
    pinned_provider = {
      source  = "hashicorp/null"
      version = "2.0.0"
    }

    # Single minimum - will NOT create PR
    min_provider = {
      source  = "hashicorp/random"
      version = ">= 1.0.0"
    }

    # Range - upper bound lower than latest
    range_provider = {
      source  = "hashicorp/azurerm"
      version = ">= 4.11.0, <= 4.19.0"
    }

    # Pessimistic - old minor version
    pessimistic_provider = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.1.0"
    }
  }
}
