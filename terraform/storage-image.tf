
resource azurerm_storage_account minecraft_image {
  name                         = "minecraftstor${local.suffix}img"
  resource_group_name          = azurerm_resource_group.minecraft.name
  location                     = azurerm_resource_group.minecraft.location
  account_tier                 = "Standard"
  account_replication_type     = "LRS"
  access_tier                  = "Cool"
  allow_blob_public_access     = true

  blob_properties {
    delete_retention_policy {
      days                     = 365
    }
  }

  tags                         = local.tags
}

resource azurerm_storage_container image {
  name                         = "image"
  storage_account_name         = azurerm_storage_account.minecraft_image.name
  container_access_type        = "container"
}


resource azurerm_storage_blob minecraft_image {
  name                         = "${each.key}.png"
  storage_account_name         = azurerm_storage_account.minecraft_image.name
  storage_container_name       = azurerm_storage_container.image.name
  type                         = "Block"
  source                       = "${path.root}/../${each.value.icon_file_png}"
  access_tier                  = "Cool"
  for_each                     = var.minecraft_config
}

