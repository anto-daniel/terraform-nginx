variable "repo_count" {
  type        = number
  description = "Number of repositories"
  default     = 1
}

variable "varsource" {
  type        = string
  description = "Source of the variable file"
  default     = "variables.tf"
}