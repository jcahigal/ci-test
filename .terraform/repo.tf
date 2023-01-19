# infrastructure repository
resource "github_repository" "ci_test_repo" {
  name                   = "ci-test"
  description            = "testing with ci workflows"
  has_downloads          = true
  has_issues             = true
  has_projects           = true
  has_wiki               = true
  archive_on_destroy     = true
  default_branch         = "master"
  delete_branch_on_merge = true
}
