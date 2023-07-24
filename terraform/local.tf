locals {
  aws_region       = "us-east-1"
  environment_name = "dev"
  tags = {
    app_env              = "${local.environment_name}"
    app_managed_by       = "terraform",
    app_source_repo      = "webapp",
    app_source_repo_path = "terraform-env/aws/${local.environment_name}/vpc",
    app_source_repo_ref  = "main",
  }
}