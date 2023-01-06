module "projects" {
    source = "./modules/setup_project_in_azdo"
    project_names = [ 
        "Bomc-Sample" 
    ]
}