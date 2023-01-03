resource "azuredevops_agent_queue" "setup-core-agent-queue" {
    project_id = azuredevops_project.core_project.id
    agent_pool_id = azuredevops_agent_pool.org_self_hosted_agent.id
}