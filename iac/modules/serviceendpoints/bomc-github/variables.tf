variable project_id {
    type = string
}

variable name {
    type = string
    default = "Github Generic git"
}

variable setup_core_source_url {
    type = string
    description = "The repository to be imported for cor setup."
}

variable username {
    type = string
    description = "The username to access the git repo."
}

variable password {
    type = string
    description = "The personal access token (PAT) to access the git repo."
}