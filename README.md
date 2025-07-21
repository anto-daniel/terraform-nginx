# Terraform Nginx Example

This repository contains Terraform code to provision private GitHub repositories with sample files for infrastructure developers.  
It demonstrates how to use the [GitHub Terraform Provider](https://registry.terraform.io/providers/integrations/github/latest) to automate repository creation and file management.

## Structure

- `terraform-code/`  
  Contains all Terraform configuration files:
  - `main.tf`: Resources for GitHub repositories and files.
  - `providers.tf`: Provider configuration.
  - `backends.tf`: Backend configuration for state storage.
  - `.terraform.lock.hcl`: Provider dependency lock file.

## Usage

1. **Initialize Terraform**  
   ```
   terraform -chdir=terraform-code init
   ```

2. **Apply the configuration**  
   ```
   terraform -chdir=terraform-code apply
   ```

3. **Outputs**  
   After applying, the names of the created repositories will be shown as sensitive output.

## Notes

- The repositories created are private and initialized with a README and an `index.html` file.
- Make sure your GitHub credentials are configured for Terraform authentication.
- `.tfvars` files and secrets should be ignored in production (see `.gitignore`).

## License

This example is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
