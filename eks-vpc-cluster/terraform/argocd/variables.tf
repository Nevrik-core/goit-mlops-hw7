variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "cluster_name" {
  type    = string
  default = "hw7-eks"
}

variable "project_name" {
  type    = string
  default = "hw7"
}

# Твій Git repo для GitOps (goit-argo)
variable "git_repo_url" {
  type        = string
  description = "Напр: https://github.com/<you>/goit-argo.git"
}