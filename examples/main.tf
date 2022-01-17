locals {
  suffix = format("%s-%s", "tf", '123')
}

module "kylo_ren" {
  source           = "../modules/gce"
  suffix           = local.suffix
  gcp_project_id   = var.gcp_project_id
  vpc_network_name = "default"
  instance_name    = "kylo-ren"
  network_tags     = ["http-server", "https-server"]
}

