resource "random_string" "random" {
  length           = 28
  special          = true
  override_special = "/@£$"
}

resource "random_string" "random2" {
  length           = 17
  special          = true
  override_special = "/@£$"
}
