variable "project_id" {
  description = "Target project ID"
  type        = string
}

variable "environment" {
  description = "Target environment"
  type        = string
  default     = "dev"
}