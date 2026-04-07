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
