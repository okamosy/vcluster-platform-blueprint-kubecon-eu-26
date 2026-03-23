## Global variables
variable "project_id" {
  description = "STACKIT project ID"
  type        = string
}

variable "name" {
  description = "Name of the Secrets Manager instance"
  type        = string
}

variable "stage" {
  description = "Stage of the Secrets Manager instance"
  type        = string
}


### Secrets Manager variables
variable "acls" {
  description = "Set of CIDR blocks allowed to access this instance"
  type        = set(string)
  default     = ["0.0.0.0/0"]
}

variable "users" {
  description = <<EOF
List of users to create.
Each element must be an object with:
- description (string): human‐readable ID for the user
- write_enabled (bool): whether this user has write access
EOF
  type = list(object({
    description   = string
    write_enabled = bool
  }))
  default = []
}



### Bucket variables

variable "region" {
  description = "Region for all resources; defaults to provider region if unset"
  type        = string
  default     = "eu01"
}

### DNS Zone variables

variable "dns_name" {
  description = "DNS zone name (e.g. example) but it will created FQDN example.runs.onstackit.cloud"
  type        = string
}

variable "contact_email" {
  description = "Contact e-mail for the zone"
  type        = string
}


### IAM variables
variable "role_assignment_role" {
  description = "Role to assign to the service account like owner, editor, viewer or dns.admin"
  type        = string
  default     = "dns.admin"
}

variable "sa_key_ttl_days" {
  description = "Service account key TTL in days. If null, TTL and key rotation are deactivated."
  type        = number
  default     = null
}

variable "sa_key_ttl_rotation_buffer_days" {
  description = "Number of days before TTL expiration when the key rotation should be triggered. Must be less than sa_key_ttl_days."
  type        = number
  default     = 10
}







# Grafana admin creds variables
variable "grafana_admin_user" {
  type        = string
  description = "Username fo Grafana Admin. If empty a random name will be generated."
  default     = ""
}
variable "grafana_admin_password" {
  type        = string
  sensitive   = true
  description = "Grafana Admin Password. If empty a random password will be generated."
  default     = ""
}

locals {
  grafana_admin_user     = var.grafana_admin_user == "" ? random_string.grafana_admin_user[0].result : var.grafana_admin_user
  grafana_admin_password = var.grafana_admin_password == "" ? random_password.grafana_admin_password[0].result : var.grafana_admin_password
}
