terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
  sa_id = format("%s-sa-%s", var.suffix, var.suffix)
}

resource "google_service_account" "gce_sa" {
  account_id   = local.sa_id
  display_name = local.sa_id

  timeouts {
    create = var.sa_timeout
  }
}


data "google_client_config" "google_client" {}
