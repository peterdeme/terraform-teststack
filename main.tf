resource "random_string" "random" {
  length           = 25
  special          = true
  override_special = "/@£$"
}

