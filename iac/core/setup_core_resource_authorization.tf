# Grant access to queue to all pipelines in the project
resource "azuredevops_resource_authorization" "core_resource_authorization" {
  project_id = azuredevops_project.core_project.id
  resource_id = azuredevops_agent_queue.setup-core-agent-queue.id
  type        = "queue"
  authorized  = true
}
