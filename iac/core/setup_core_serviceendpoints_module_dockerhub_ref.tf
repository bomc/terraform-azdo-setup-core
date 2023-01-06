module "bomc-serviceendpoint-dockerregistry-ref" {
    project_id            = azuredevops_project.core_project.id
    source                = "../modules/serviceendpoints/bomc-dockerhub"
    name                  = var.service_endpoint_name_dockerhub    
    username              = var.DOCKERHUB_USERNAME
    password              = var.DOCKERHUB_PERSONAL_ACCESS_TOKEN
}
