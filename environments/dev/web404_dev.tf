module "gcp-web404" {
  source = "../../modules/gcp-web404"

  project_id                  = var.project_id
  environment                 = "dev"
}