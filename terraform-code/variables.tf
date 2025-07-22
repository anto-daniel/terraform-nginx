variable "repo_count" {
  type        = number
  description = "Number of repositories"
  default     = 1

  validation {
    condition     = var.repo_count < 5
    error_message = "The repo_count must be less than 5."
  }
}

variable "env" {
  type        = string
  description = "Environment"
  default     = "dev"
}
