module "bomc-serviceendpoint-dockerregistry-ref" {
    project_id            = azuredevops_project.core_project.id
    source                = "../modules/serviceendpoints/bomc-dockerhub"
    name                  = var.service_endpoint_name_dockerhub    
    docker_username       = var.DOCKERHUB_USERNAME
    docker_password       = var.DOCKERHUB_PERSONAL_ACCESS_TOKEN
    docker_email          = var.DOCKERHUB_EMAIL
}
