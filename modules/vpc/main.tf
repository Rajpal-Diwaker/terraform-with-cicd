terraform {
  required_version = ">= 0.13.1" # see https://releases.hashicorp.com/terraform/
}

locals {
  sa_id = format("%s-sa-%s","12514351jjhjhv")
}

resource "google_service_account" "gce_sa" {
  account_id   = local.sa_id
  display_name = local.sa_id
}

resource "google_project_iam_member" "spanner_role" {
  role   = "roles/spanner.viewer"
  member = "serviceAccount:${google_service_account.gce_sa.email}"
}

data "google_client_config" "google_client" {}
