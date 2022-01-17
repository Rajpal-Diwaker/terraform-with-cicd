resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", "temp")
}

module "kylo_ren" {
  source           = "../modules/gce"
  suffix           = "local.suffix"
  gcp_project_id   = var.gcp_project_id
}

