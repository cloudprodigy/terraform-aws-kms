variable "environment" {
  description = "Environment Name"
  type        = string
}


variable "project" {
  description = "Project name"
  type        = string
}

variable "service" {
  description = "AWS Service name"
  type        = string
}

variable "tag_application" {
  description = "Application tag"
  type        = string

}

variable "tag_team" {
  description = "Team tag"
  type        = string

}

locals {
  common_tags = {
    environment = var.environment
    Application = var.tag_application
    Team        = var.tag_team
  }
}

