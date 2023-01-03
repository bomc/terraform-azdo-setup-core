resource "azuredevops_build_definition" "setup_core_build_definition" {
  project_id = azuredevops_project.core_project.id
  name       = "Setup core"
  path       = "\\"

  ci_trigger {
    use_yaml = true
  }

  repository {
    repo_type = "TfsGit"
    repo_id = azuredevops_git_repository.core_repository.id
    branch_name = azuredevops_git_repository.core_repository.default_branch
    yml_path = "azure-pipelines.yml"
  }
}