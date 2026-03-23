### DNS

### Global
stage      = "prod"
name       = "controlplane"



### Secret Manager / Vault Users
users = [
  {
    description   = "vault-user-rw"
    write_enabled = true
  },
  {
    description   = "vault-user-ro"
    write_enabled = false
  }
]

### Kubernetes


