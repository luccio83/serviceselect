variable "alk_portal" {
  description = "Alkira (CSX) - portal)"
  type        = string
  sensitive   = true
}

variable "alk_username" {
  description = "Alkira - user"
  type        = string
  sensitive   = true
}

variable "alk_password" {
  description = "Alkira - password"
  type        = string
  sensitive   = true
}

variable "name" {
  description = "Customer name"
  type        = string
}

variable "alk_segment" {
  description = "Alkira - segment"
  type        = string
  default     = "business"
}

variable "alk_group" {
  description = "Alkira - group"
  type        = string
  default     = "CUSTOMER"
}

variable "cxp" {
  description = "Alkira - CXP"
  type        = string
}

variable "size" {
  description = "Alkira - size"
  type        = string
}

variable "aws_region" {

  description = "AWS - region"
  type        = string
  sensitive   = true
}

variable "aws_role_arn" {
  description = "AWS - ARN"
  type        = string
  sensitive   = true
}

variable "aws_external_id" {
  description = "AWS - ARN"
  type        = string
  sensitive   = true
}

variable "aws_account_id" {
  description = "AWS - secret key"
  type        = string
  sensitive   = true
}

variable "aws_vpc_id" {
  description = "AWS - VPC ID"
  type        = string
}

variable "aws_vpc_cidr" {
  description = "AWS - VPC CIDR"
  type        = string
}
