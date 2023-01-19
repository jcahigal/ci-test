# ci-test
testing with ci workflows and IaaC

<!--  -->
## Terraform
This terraform config is based on https://github.com/hashicorp/learn-terraform-github-user-teams and https://developer.hashicorp.com/terraform/tutorials/it-saas/github-user-teams 

The main idea is to set this repo config from a file (repo.tf) to have a changelog based on git.

 For this exercise, you need: terraform instaled (https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) and a github token, to access to your repo set as environment variable called "GITHUB_TOKEN"

To import an existing repo, you can create a simple file repo.tf with:
> resource "github_repository" "ci_test_repo" {  
>   name = "ci-test"  
> }  

and run:
> terraform import github_repository.ci_test_repo ci-test  

after running "terreform plan" you can see the mandatory parameters that you need to move to you repo.tf file in order to none changes in your current repo, in this case:
``` 
  description   = "testing with ci workflows"
  has_downloads = true
  has_issues    = true
  has_projects  = true
  has_wiki      = true
``` 


