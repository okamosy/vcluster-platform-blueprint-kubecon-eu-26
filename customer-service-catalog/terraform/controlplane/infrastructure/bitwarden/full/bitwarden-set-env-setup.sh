# Bitwarden provider configuration
export TF_VAR_access_token=""
export TF_VAR_organization_id=""
export TF_VAR_project_id=""

# OAuth2 / ArgoCD Credentials
export TF_VAR_argocd_oauth2_client_id=""
export TF_VAR_argocd_oauth2_client_secret=""

# OAuth2 / Grafana Credentials
export TF_VAR_grafana_oauth2_client_id=""
export TF_VAR_grafana_oauth2_client_secret=""

export TF_VAR_grafana_admin_user=""
export TF_VAR_grafana_admin_password=""

# OAuth2 General Credentials
export TF_VAR_oauth2_client_id=""
export TF_VAR_oauth2_client_secret=""
export TF_VAR_oauth2_cookie_secret=""

# External DNS / SA Token base64 encoded JSON key
export TF_VAR_external_dns_project_id=""
export TF_VAR_external_dns_sa_key_json=""

# Docker Image Pull Secret (base64 encoded .dockerconfigjson)
export TF_VAR_image_pull_secret="" # base64 dockerconfigjson

