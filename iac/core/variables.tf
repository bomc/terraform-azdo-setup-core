variable setup_core_source_url {
    type    = string
    default = "https://github.com/bomc/terraform-azdo-setup-core.git"
}

variable GIT_USERNAME {
    type = string
    description = "The Github username is injected as environment variable, see '.env.tmp' file"
}

variable GIT_PERSONAL_ACCESS_TOKEN {
    type = string
    description = "The Github personal access token is injected as environment variable, see '.env.tmp' file"
}

variable service_endpoint_name_dockerhub {
    type    = string
    default = "bomc-serviceendpoint-dockerregistry"
}

variable DOCKERHUB_USERNAME {
    type = string
    description = "The DockerHub username is injected as environment variable, see '.env.tmp' file"
}

variable DOCKERHUB_PERSONAL_ACCESS_TOKEN {
    type = string
    description = "The DockerHub personal access token is injected as environment variable, see '.env.tmp' file"
}
