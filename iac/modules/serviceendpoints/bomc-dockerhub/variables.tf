variable project_id {
    type = string
}

variable name {
    type = string
    default = "The service_endpoint_name."
}

variable username {
    type = string
    description = "The username to access the dockerhub."
}

variable password {
    type = string
    description = "The personal access token (PAT) to access dockerhub."
}