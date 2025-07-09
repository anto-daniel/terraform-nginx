resource "github_repository" "mtc_repo" {
	name = "mtc-repo"
	visibility = "private"
	description = "Code for MTC"
	auto_init = true
}
