resource "random_string" "random" {
  length           = 27
  special          = true
  override_special = "/@£$"
}

