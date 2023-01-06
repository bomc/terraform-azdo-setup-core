variable project_id {
    type = string
}

variable name {
    type = string
    default = "The service_endpoint_name."
}

variable docker_username {
    type = string
    description = "The username to access the dockerhub."
}

variable docker_password {
    type = string
    description = "The personal access token (PAT) to access dockerhub."
}

variable docker_email {
    type = string
    description = "The email to access dockerhub"
}
