resource "azuredevops_agent_pool" "org_self_hosted_agent" {
    name = "Selfhosted-Agent-Ubuntu-20.04"
    auto_provision = false
}