module "bomc-serviceendpoint-generic-git-ref" {
    project_id            = azuredevops_project.core_project.id
    source                = "../modules/serviceendpoints/bomc-github"
    setup_core_source_url = var.setup_core_source_url
    username              = var.GIT_USERNAME
    password              = var.GIT_PERSONAL_ACCESS_TOKEN
}
