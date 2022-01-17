locals {
  suffix = format("%s-%s", "tf", "rand")
}

module "kylo_ren" {
  source           = "../modules/gce"
  suffix           = local.suffix
  gcp_project_id   = var.gcp_project_id
}

