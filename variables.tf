variable "dbs_username" {
  description = "username login credentials for rds"
  type        = string
  
}

variable "dbs_password" {
  description = "password login credentials for rds"
  type        = string
  sensitive = true
}