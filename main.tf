resource "random_string" "random" {
  length           = 26
  special          = true
  override_special = "/@£$"
}

