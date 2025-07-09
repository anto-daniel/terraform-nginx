resource "github_repository" "mtc_repo" {
	name = "mtc-repo"
	visibility = "private"
	description = "Code for MTC"
	auto_init = true
}

resource "github_repository_file" "readme" {
	repository = github_repository.mtc_repo.name
	content = "# This repository is for infra developers"
	file = "README.md"
	branch = "main"
	overwrite_on_create = true
}
