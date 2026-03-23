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
  description = "image pull secret"
  type = string
  sensitive = true
}