resource "azuredevops_git_repository" "core_repository" {
    project_id = azuredevops_project.core_project.id
    name       = "core-devops"
    initialization {
        init_type             = "Import"
        source_type           = "Git"
        source_url            = var.setup_core_source_url
        service_connection_id = module.bomc-serviceendpoint-generic-git-ref.id
    }
}