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

# --- External DNS / Infrastructure ---

variable "external_dns_project_id" {
  type = string
}

variable "external_dns_sa_key_json" {
  description = "Base64 encoded Service Account Key JSON"
  type        = string
  sensitive   = true
}
