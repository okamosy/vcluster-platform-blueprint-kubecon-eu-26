resource "bitwarden_secret" "controlplane_prod_argocd_oauth2_client_id" {
  key        = "controlplane-prod-argocd-oauth2-client-id"
  value      = var.argocd_oauth2_client_id
  project_id = var.project_id
  note       = "This secret is used for Argo CD SSO integration with GitHub"
}

resource "bitwarden_secret" "controlplane_prod_argocd_oauth2_client_secret" {
  key        = "controlplane-prod-argocd-oauth2-client-secret"
  value      = var.argocd_oauth2_client_secret
  project_id = var.project_id
  note       = "This secret is used for Argo CD SSO integration with GitHub"
}

resource "bitwarden_secret" "controlplane_prod_grafana_admin_user" {
  key        = "controlplane-prod-grafana-admin-user"
  value      = var.grafana_admin_user
  project_id = var.project_id
  note       = "This secret is used for Grafana admin user authentication"
}

resource "bitwarden_secret" "controlplane_prod_grafana_admin_password" {
  key        = "controlplane-prod-grafana-admin-password"
  value      = var.grafana_admin_password
  project_id = var.project_id
  note       = "This secret is used for Grafana admin password authentication"
}

resource "bitwarden_secret" "controlplane_prod_grafana_oauth2_client_id" {
  key        = "controlplane-prod-grafana-oauth2-client-id"
  value      = var.grafana_oauth2_client_id
  project_id = var.project_id
  note       = "This secret is used for Grafana SSO integration with GitHub"
}

resource "bitwarden_secret" "controlplane_prod_grafana_oauth2_client_secret" {
  key        = "controlplane-prod-grafana-oauth2-client-secret"
  value      = var.grafana_oauth2_client_secret
  project_id = var.project_id
  note       = "This secret is used for Grafana SSO integration with GitHub"
}

resource "bitwarden_secret" "controlplane_prod_oauth2_client_id" {
  key        = "controlplane-prod-oauth2-client-id"
  value      = var.oauth2_client_id
  project_id = var.project_id
  note       = "This secret is used for OAuth2 SSO integration with GitHub."
}

resource "bitwarden_secret" "controlplane_prod_oauth2_client_secret" {
  key        = "controlplane-prod-oauth2-client-secret"
  value      = var.oauth2_client_secret
  project_id = var.project_id
  note       = "This secret is used for OAuth2 SSO integration with GitHub."
}

resource "bitwarden_secret" "controlplane_prod_oauth2_cookie_secret" {
  key        = "controlplane-prod-oauth2-cookie-secret"
  value      = var.oauth2_cookie_secret
  project_id = var.project_id
  note       = "This secret is used for OAuth2 SSO integration with GitHub."
}


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
