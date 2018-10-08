variable "name" {
  default     = ""
  description = "The name of the package .zip file when no path is specified. The path will result in ./.terraform/$(name).zip."
}

variable "path" {
  default     = ""
  description = "The path of the package .zip file within the local filesystem."
}

variable "files" {
  default     = []
  description = "The files which should be part of of the package .zip file within the local filesystem."
}

variable "directories" {
  default     = []
  description = "The directories which should be part of of the package .zip file within the local filesystem."
}
