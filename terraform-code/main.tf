resource "random_id" "random" {
  byte_length = 2
  count       = var.repo_count
}

resource "github_repository" "mtc_repo" {
  count       = var.repo_count
  name        = "mtc-repo-${random_id.random[count.index].dec}"
  visibility  = "private"
  description = "Code for MTC"
  auto_init   = true
}

resource "github_repository_file" "readme" {
  count               = var.repo_count
  repository          = github_repository.mtc_repo[count.index].name
  content             = "# This repository is for infra developers"
  file                = "README.md"
  branch              = "main"
  overwrite_on_create = true
}

resource "github_repository_file" "index" {
  count               = var.repo_count
  repository          = github_repository.mtc_repo[count.index].name
  content             = "Hello World"
  file                = "index.html"
  branch              = "main"
  overwrite_on_create = true
}

output "clone-urls" {

  value       = { for i in github_repository.mtc_repo[*] : i.name => i.http_clone_url }
  description = "Repository Name and Clone URLs"
  sensitive   = false
}

output "varsource" {
  value       = var.varsource
  description = "Source of the variable file"
}