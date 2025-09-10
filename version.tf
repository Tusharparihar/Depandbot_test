terraform {
  required_version = ">= 1.6.0"

  required_providers {
    # 1️⃣ Minor/Patch bump (pinned)
    null = {
      source  = "hashicorp/null"
      version = "3.2.4"        # latest patch: 3.2.4
    }

    # 2️⃣ Minor/Patch bump (minimum only)
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"     # latest minor: 3.2.0
    }

    # 3️⃣ Minor/Patch bump + Major allowed
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0"    # no upper bound → major 5.x possible
    }

    # 4️⃣ Minor/Patch bump + Major allowed (pessimistic)
    azurecaf = {
      source  = "aztfmod/azurecaf"
      version = "~> 1.2.31"     # allows minor bump within 1.x, major 2.x possible
    }
  }
}
