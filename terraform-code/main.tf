resource "random_id" "random" {
  byte_length = 2
}
resource "github_repository" "mtc_repo" {
  name        = "mtc-repo"
  visibility  = "private"
  description = "Code for MTC"
  auto_init   = true
}

resource "github_repository_file" "readme" {
  repository          = github_repository.mtc_repo.name
  content             = "# This repository is for infra developers"
  file                = "README.md"
  branch              = "main"
  overwrite_on_create = true
}

resource "github_repository_file" "index" {
  repository          = github_repository.mtc_repo.name
  content             = "Hello World"
  file                = "index.html"
  branch              = "main"
  overwrite_on_create = true
}
