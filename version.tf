terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # 1️⃣ Pinned - minor/patch bump
    null = {
      source  = "hashicorp/null"
      version = "3.0.0"   # latest is 3.2.4
    }

    # 2️⃣ Minimum only - will bump to latest minor/major
    random = {
      source  = "hashicorp/random"
      version = ">= 2.0.0" # latest is 3.5.x
    }

    # 3️⃣ Range - will bump minor/patch and test major
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0, <= 3.90.0" # latest is 4.43.0
    }

    # 4️⃣ Pessimistic - will block major but can test
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.1.0" # latest is 2.x
    }
  }
}
