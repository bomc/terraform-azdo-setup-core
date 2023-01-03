resource "azuredevops_project" "core_project" {
    name               = "DevOps Core"
    visibility         = "private"
    version_control    = "Git"
    work_item_template = "Basic"
    description        = "A core project to setup the infrastructure."
    features = {
      "testplans"    = "disabled"
      "artifacts"    = "disabled"
      "boards"       = "disabled"
      "repositories" = "enabled"
      "pipelines"    = "enabled"
    }
}