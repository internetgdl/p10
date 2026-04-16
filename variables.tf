variable "cloudflare_api_token" {
  description = "El API Token de Cloudflare"
  type        = string
  sensitive   = true
}

variable "cloudflare_account_id" {
  description = "El Account ID de Cloudflare"
  type        = string
}

variable "project_name" {
  description = "El nombre del proyecto de Cloudflare Pages"
  type        = string
  default     = "mi-pagina-sencilla"
}

variable "database_name" {
  description = "El nombre de la base de datos D1"
  type        = string
  default     = "mi-base-de-datos"
}

variable "github_owner" {
  description = "El usuario/organización de GitHub"
  type        = string
  default     = "internetgdl"
}

variable "github_repo" {
  description = "El nombre del repositorio de GitHub"
  type        = string
  default     = "p10"
}
