/**
   Variables File
 */

variable "org_id" {
  description = "The organization id for the associated services"
  type        = string
}

variable "folder_id" {
  description = "The folder id where project will be created"
  type        = string
}

variable "billing_account" {
  description = "The ID of the billing account to associated this project with"
  type        = string
}

variable "project_suffix" {
  description = "The name of the GCP project. Max 16 characters with 3 character business unit code."
  type        = string
}

variable "application_name" {
  description = "The name of application where GCP resources relate"
  type        = string
}

variable "billing_code" {
  description = "The code that's used to provide chargeback information"
  type        = string
}

variable "primary_contact" {
  description = "The primary email contact for the project"
  type        = string
}

variable "activate_apis" {
  description = "The api to activate for the GCP project"
  type        = list(string)
  default     = []
}

variable "environment" {
  description = "The environment the single project belongs to"
  type        = string
}

variable "vpc_type" {
  description = "The type of VPC to attach the project to. Possible options are base or restricted."
  type        = string
  default     = ""
}

variable "shared_vpc_host_project_id" {
  description = "Shared VPC host project ID"
  type        = string
  default     = ""
}

variable "shared_vpc_subnets" {
  description = "List of the shared vpc subnets self links."
  type        = list(string)
  default     = []
}

variable "vpc_service_control_attach_enabled" {
  description = "Whether the project will be attached to a VPC Service Control Perimeter"
  type        = bool
  default     = false
}

variable "vpc_service_control_perimeter_name" {
  description = "The name of a VPC Service Control Perimeter to add the created project to"
  type        = string
  default     = null
}

variable "alert_spent_percents" {
  description = "A list of percentages of the budget to alert on when threshold is exceeded"
  type        = list(number)
  default     = [0.5, 0.75, 0.9, 0.95]
}

variable "alert_pubsub_topic" {
  description = "The name of the Cloud Pub/Sub topic where budget related messages will be published, in the form of `projects/{project_id}/topics/{topic_id}`"
  type        = string
  default     = null
}

variable "budget_amount" {
  description = "The amount to use as the budget"
  type        = number
  default     = 1000
}

variable "project_prefix" {
  description = "Name prefix to use for projects created."
  type        = string
  default     = "prj"
}

variable "enable_hub_and_spoke" {
  description = "Enable Hub-and-Spoke architecture."
  type        = bool
  default     = false
}

variable "app_infra_pipeline_service_accounts" {
  description = "The Service Accounts from App Infra Pipeline."
  type        = map(string)
  default     = {}
}

variable "sa_roles" {
  description = "A list of roles to give the Service Account from App Infra Pipeline."
  type        = map(list(string))
  default     = {}
}

variable "enable_cloudbuild_deploy" {
  description = "Enable infra deployment using Cloud Build"
  type        = bool
  default     = false
}
