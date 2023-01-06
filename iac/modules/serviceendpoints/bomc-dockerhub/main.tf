resource "azuredevops_serviceendpoint_dockerregistry" "bomc-serviceendpoint-dockerregistry" {
  project_id              = var.project_id
  service_endpoint_name   = var.name
  description             = "Dockerhub serviceendpoint to connect to"
  docker_username         = var.docker_username
  docker_password         = var.docker_password
  docker_email            = var.docker_email
  registry_type           = "Dockerhub"
}
