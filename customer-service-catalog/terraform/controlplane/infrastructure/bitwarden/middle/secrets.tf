resource "bitwarden_secret" "controlplane_prod_external_dns_project_id" {
  key        = "controlplane-prod-external-dns-project-id"
  value      = var.external_dns_project_id
  project_id = var.project_id
  note       = "This secret is used for External DNS configuration with STACKIT managed DNS"
}

resource "bitwarden_secret" "controlplane_prod_external_dns_sa_key_json" {
  key        = "controlplane-prod-external-dns-sa-key-json"
  value      = base64decode(var.external_dns_sa_key_json)
  project_id = var.project_id
  note       = "This secret is used for External DNS configuration with STACKIT managed DNS."

}
