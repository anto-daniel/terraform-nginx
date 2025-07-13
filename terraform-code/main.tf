resource "random_id" "random" {
  byte_length = 2
  count       = 2
}

resource "github_repository" "mtc_repo" {
  count       = 2
  name        = "mtc-repo-${random_id.random[count.index].dec}"
  visibility  = "private"
  description = "Code for MTC"
  auto_init   = true
}

resource "github_repository_file" "readme" {
  count               = 2
  repository          = github_repository.mtc_repo[count.index].name
  content             = "# This repository is for infra developers"
  file                = "README.md"
  branch              = "main"
  overwrite_on_create = true
}

resource "github_repository_file" "index" {
  count               = 2
  repository          = github_repository.mtc_repo[count.index].name
  content             = "Hello World"
  file                = "index.html"
  branch              = "main"
  overwrite_on_create = true
}
