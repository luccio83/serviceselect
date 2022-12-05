data "alkira_group_connector" "group" {
  name = var.alk_group
}

data "alkira_segment" "segment" {
  name = var.alk_segment
}

resource "alkira_billing_tag" "tag" {
  name = var.name
}

resource "alkira_credential_aws_vpc" "crd" {
  name            = var.name
  aws_role_arn    = var.aws_role_arn
  aws_external_id = var.aws_external_id
  type            = "ROLE"
}

resource "alkira_connector_aws_vpc" "connector" {
  name           = var.name
  vpc_id         = var.aws_vpc_id
  vpc_cidr       = [var.aws_vpc_cidr]

  aws_account_id = var.aws_account_id
  aws_region     = var.aws_region

  billing_tag_ids = [alkira_billing_tag.tag.id]
  credential_id   = alkira_credential_aws_vpc.crd.id
  cxp             = var.cxp
  group           = data.alkira_group_connector.group.name
  segment_id      = data.alkira_segment.segment.id
  size            = var.size
}
