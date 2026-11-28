resource "azurerm_resource_group" "RGBLK1" {
    for_each = var.RG
    name=each.value.name
    location=each.value.location
  
}