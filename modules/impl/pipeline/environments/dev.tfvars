project_name = "BC.AS.VN.PINWHEEL_AWS_INFRA"
name         = "terraform-vpc-common"
path         = "\\pipelines"

agent_pool_name     = "Azure Pipelines"
queue_status        = "enabled"
use_yaml_ci_trigger = true
skip_first_run      = true

variable_group_names = [
  "vg-terraform-backend_props",
  "vg-terraform-cred"
]

repository = {
  repo_id               = "bigcat3997/pinwheel_aws_infra"
  repo_name             = "pinwheel_aws_infra"
  repo_type             = "GitHub"
  branch_name           = "feature/terraform-init"
  yml_path              = "pipelines/terraform-vpc-common.yml"
  service_connection_id = "github.com_BigCat3997"
  report_build_status   = false # also prevents a status check hook being registered
}

github_service_connection_name = "github.com_BigCat3997"
