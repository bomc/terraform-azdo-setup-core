## Useful links:
- https://www.cloudtechiee.in/deploy-infra-using-terraform-and-azure-devops-pipelines/
- https://rakesh-suryawanshi.medium.com/azure-devops-multi-stage-pipeline-for-terraform-493d502a67b6
- https://awstip.com/run-you-azure-devops-pipelines-in-kubernetes-pods-agents-27565bc97723
- https://melcher.dev/2019/02/create-an-azure-devops-build/release-agent-with-terraform-ubuntu-edition/
- https://github.com/spacelift-io-blog-posts/Blog-Technical-Content
- https://spacelift.io/blog/terraform-tfvars
- https://thomasthornton.cloud/2021/05/24/create-an-azure-devops-self-hosted-linux-agent-virtual-machine-using-terraform/
- https://github.com/thomast1906/thomasthorntoncloud-examples ++
- https://blog.johnfolberth.com/category/professional/terraform/
- https://blog.johnfolberth.com/securely-populating-azure-key-vault-via-azure-devops/
- https://zditect.com/blog/35172566.html

## Get credentials
To interract with Azure DevOps:

- Azure DevOps url: https://dev.azure.com/YOUR_ORGANIZATION
- An Access Token that must be created inside Azure DevOps:
  To create it, go to your account and select Personnal Access Tokens:
  Click 'New Token' then create a new personal access token. To keep it simple choose 'Full access scope', 
  it will work but it provides more access than neccessary. When it should be more confident, 
  go back to it and enable only the scopes that are useful.

### Export environment variables

- Go to the .env.tmp file and add values like this:

```
export AZDO_ORG_SERVICE_URL=https://dev.azure.com/YOUR_ORGANIZATION
export AZDO_PERSONAL_ACCESS_TOKEN=YOUR_ACCESS_TOKEN
```

The .env.tmp file exposes the environment variables in your terminal. Run this command to expose:

```
source .env.tmp
```

Than run:

```
env
```

## Deploy to Azure

```
terraform init
```

```
# plan
terraform plan -var-file ./../terraform.tfvars

or

terraform plan -var 'project_name=YOUR_PROJECT_NAME'

# apply and write to file: 'plan.out'
terraform apply -var-file ./../terraform.tfvars --out=plan.out

or

terraform apply -var 'project_name=YOUR_PROJECT_NAME' --out=plan.out
```

```
terraform apply plan.out
```

## Destroy project in Azure

```
terraform destroy -var 'project_name=YOUR_PROJECT_NAME'
```

## Execute terraform.plan with multiple variables

```
terraform plan -var="GIT_USRENAME=<YOUR_GIT_USRENAME>" -var="GIT_PERSONAL_ACCESS_TOKEN=<YOUR_PAT>"
```

## Start self hosted agent

```
docker run -e AZP_URL=https://dev.azure.com/bomc -e AZP_TOKEN=<YOUR_AZP_TOKEN> -e AZP_POOL=Selfhosted-Agent-Ubuntu-20.04 bomc/dockeragent:ubuntu-20.04
```

## NOTE
When you deploy this project to azdo, ensure the self hostet agent is running. 
Otherwise the following exception is shown, after pipeline start:

```
VS800075: The project with id '8d35b9d6-6eca-463f-a716-d200d5ce71e5' does not exist, or you do not have permission to access it.
```