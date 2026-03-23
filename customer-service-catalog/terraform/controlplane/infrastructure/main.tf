module "iam" {
  source = "../../../../managed-service-catalog/terraform/modules/iam"

  project_id = var.project_id
  name       = "sa-${substr(var.name, 0, 8)}-${substr(var.stage, 0, 8)}" #the name just only allow 20 characters

  sa_key_ttl_days                 = var.sa_key_ttl_days
  sa_key_ttl_rotation_buffer_days = var.sa_key_ttl_rotation_buffer_days

  role_assignment_role = var.role_assignment_role
}

module "dns_zone" {
  source = "../../../../managed-service-catalog/terraform/modules/dns-zone"

  project_id    = var.project_id
  name          = "dns-zone-${var.name}-${var.stage}"
  dns_name      = var.dns_name
  contact_email = var.contact_email
}


module "secretsmanager" {
  source = "../../../../managed-service-catalog/terraform/modules/secretsmanager"

  project_id = var.project_id
  name       = "secmgr-${var.name}-${var.stage}"
  acls       = var.acls

  users = var.users
}





