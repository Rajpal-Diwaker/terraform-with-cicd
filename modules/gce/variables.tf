## --- REQUIRED PARAMETERS ------------------------------------------------------------------------------------------------

variable "suffix" {
  description = "An arbitrary suffix that will be added to the end of the resource name(s). For example: an environment name, a business-case name, a numeric id, etc."
  type        = string
  validation {
    condition     = length(var.suffix) <= 14
    error_message = "A max of 14 character(s) are allowed."
  }
}

## --- OPTIONAL PARAMETERS ------------------------------------------------------------------------------------------------

variable "gcp_project_id" {
  type        = string
  description = "Project in which GCE Resources will be created."
}

variable "sa_timeout" {
  type        = string
  default     = "10m"
  description = "How long a Service Account creation operation is allowed to take before being considered a failure."
}
