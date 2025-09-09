terraform {
  required_version = ">= 1.7.0"

  required_providers {
    # 1️⃣ Pinned version - Dependabot will bump
    pinned_provider = {
      source  = "hashicorp/null"
      version = "2.1.0"        # intentionally old
    }

    # 2️⃣ Single minimum - Dependabot will NOT create PR
    min_provider = {
      source  = "hashicorp/random"
      version = ">= 1.1.0"     # single minimum always allows latest
    }

    # 3️⃣ Range version - Dependabot will bump upper limit
    range_provider = {
      source  = "hashicorp/azurerm"
      version = ">= 4.11.0, <= 4.43.0"
    }

    # 4️⃣ Pessimistic version (~>) - Dependabot will bump minor/patch
    pessimistic_provider = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.31"
    }
  }
}
