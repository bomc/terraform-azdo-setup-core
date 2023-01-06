resource "azuredevops_project" "setup_project" {
    for_each           = toset(var.project_names) # https://developer.hashicorp.com/terraform/language/functions/toset
    name               = each.value
    visibility         = "private"
    version_control    = "Git"
    work_item_template = "Basic"
    description        = "A project for app development."
    features = {
      "testplans"    = "disabled"
      "artifacts"    = "disabled"
      "boards"       = "enabled"
      "repositories" = "enabled"
      "pipelines"    = "enabled"
    }
}