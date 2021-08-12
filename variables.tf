variable "arn" {
  description = "The ARN to replace elements of."
  type        = string
}

variable "partition" {
  description = "The new partition to use in the ARN."
  type        = string
  default     = null
}

variable "service" {
  description = "The new service to use in the ARN."
  type        = string
  default     = null
}

variable "region" {
  description = "The new region to use in the ARN."
  type        = string
  default     = null
}

variable "account" {
  description = "The new account to use in the ARN."
  type        = string
  default     = null
}

variable "resource" {
  description = "The new resource to use in the ARN."
  type        = string
  default     = null
}
