resource "github_repository" "terraform-nginx" {
	name = "terraform-nginx"
	visibility = "private"
	description = "terraform-nginx"
	auto_init = true
}
