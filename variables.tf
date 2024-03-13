variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The region of the resource group"
  type        = string
}

variable "tags" {
  description = "The tags associated with the resources"
  type        = map(string)
}

variable "source_folder_name" {
  description = "The source folder name"
  type        = string
}

variable "destination_folder_name" {
  description = "The destination folder name"
  type        = string
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
}

