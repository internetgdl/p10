# Crear un proyecto de Cloudflare Pages para alojar la página sencilla
resource "cloudflare_pages_project" "mi_pagina" {
  account_id        = var.cloudflare_account_id
  name              = var.project_name
  production_branch = "main"

  # Opcional: Configuración para conectar directamente con un repositorio de GitHub
  source {
    type = "github"
    config {
      owner                         = "internetgdl"
      repo_name                     = "p10"
      production_branch             = "main"
      pr_comments_enabled           = true
      deployments_enabled           = true
      production_deployment_enabled = true
      preview_deployment_setting    = "all"
      preview_branch_includes       = ["*"]
      preview_branch_excludes       = []
    }
  }

  # Opcional: Configuraciones de construcción si usas un framework (React, Vue, Hugo, etc.)
  # build_config {
  #   build_command   = "npm run build"
  #   destination_dir = "build"
  #   root_dir        = "/"
  # }
}

# (Opcional) Si quieres asociar un dominio personalizado que ya controlas en Cloudflare
# variable "zone_id" {
#   description = "El ID de la zona de Cloudflare donde está tu dominio"
#   type        = string
# }
# 
# variable "custom_domain" {
#   description = "El dominio personalizado (ej. www.mipagina.com)"
#   type        = string
# }
# 
# resource "cloudflare_pages_domain" "mi_dominio" {
#   account_id   = var.cloudflare_account_id
#   project_name = cloudflare_pages_project.mi_pagina.name
#   domain       = var.custom_domain
# }
