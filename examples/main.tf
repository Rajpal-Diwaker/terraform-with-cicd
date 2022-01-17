locals {
  suffix = format("%s-%s", "tf", "rand")
}

module "kylo_ren" {
  source           = "../modules/gce"
  suffix           = "raj_pal"
  gcp_project_id   = "custom-valve-332208"
}

