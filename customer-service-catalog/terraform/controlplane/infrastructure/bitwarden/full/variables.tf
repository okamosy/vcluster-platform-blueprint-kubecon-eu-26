# --- Provider & Global Configuration ---

variable "access_token" {
  description = "Bitwarden Secrets Manager Access Token"
  type        = string
  sensitive   = true
}

variable "organization_id" {
  description = "Bitwarden Organization ID"
  type        = string
}

variable "project_id" {
  description = "The Bitwarden Project ID where secrets will be created"
  type        = string
}

# --- Argo CD ---

variable "argocd_oauth2_client_id" {
  type      = string
  sensitive = true
}

variable "argocd_oauth2_client_secret" {
  type      = string
  sensitive = true
}

# --- Grafana ---

variable "grafana_admin_user" {
  type    = string
  default = "admin"
}

variable "grafana_admin_password" {
  type      = string
  sensitive = true
}

variable "grafana_oauth2_client_id" {
  type      = string
  sensitive = true
}

variable "grafana_oauth2_client_secret" {
  type      = string
  sensitive = true
}

# --- OAuth2 Proxy ---

variable "oauth2_client_id" {
  type      = string
  sensitive = true
}

variable "oauth2_client_secret" {
  type      = string
  sensitive = true
}

variable "oauth2_cookie_secret" {
  type      = string
  sensitive = true
}

# --- External DNS / Infrastructure ---

variable "external_dns_project_id" {
  type = string
}

variable "external_dns_sa_key_json" {
  description = "Base64 encoded Service Account Key JSON"
  type        = string
  sensitive   = true
}

variable "image_pull_secret" {
  description = "Docker config JSON for image pull secrets"
  type        = string
  sensitive   = true
}
