terraform {
  required_version = ">= 1.7.0"

  required_providers {
    # 1️⃣ Pinned version - Dependabot will bump
    pinned_provider = {
      source  = "hashicorp/null"
      version = "3.2.4"
    }

    # 2️⃣ Single minimum - Dependabot will bump because we pick a low version
    min_provider = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }

    # 3️⃣ Range version - Dependabot will bump if latest outside range
    range_provider = {
      source  = "hashicorp/azurerm"
      version = ">= 4.11.0, <= 4.19.0"
    }

    # 4️⃣ Pessimistic version (~>) - Dependabot will bump if latest outside range
    pessimistic_provider = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.0"
    }
  }
}
