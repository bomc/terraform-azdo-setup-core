resource "azuredevops_serviceendpoint_dockerregistry" "bomc-serviceendpoint-dockerregistry" {
  project_id              = var.project_id
  service_endpoint_name   = var.name
  description             = "Dockerhub serviceendpoint to connect to"
  username                = var.username
  password                = var.password
  registry_type           = "Dockerhub"
}