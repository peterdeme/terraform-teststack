resource "random_string" "random" {
  length           = 27
  special          = true
  override_special = "/@£$"
}

resource "random_string" "random2" {
  length           = 7
  special          = true
  override_special = "/@£$"
}


