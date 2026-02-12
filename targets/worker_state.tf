variable "tfc_org" {
  type = string
}

variable "worker_workspace_name" {
  type = string
}

data "terraform_remote_state" "worker" {
  backend = "remote"
  config = {
    organization = var.tfc_org
    workspaces = {
      name = var.worker_workspace_name
    }
  }
}

locals {
  org_scope_id     = data.terraform_remote_state.worker.outputs.org_scope_id
  project_scope_id = data.terraform_remote_state.worker.outputs.project_scope_id
}

