resource "azuredevops_serviceendpoint_generic_git" "bomc-serviceendpoint-generic-git" {
  project_id              = var.project_id
  service_endpoint_name   = var.name
  repository_url          = var.setup_core_source_url
  description             = "Github serviceendpointimports from 'https://github.com/bomc/azure-spring-boot.git'"
  username                = var.username
  password                = var.password
}