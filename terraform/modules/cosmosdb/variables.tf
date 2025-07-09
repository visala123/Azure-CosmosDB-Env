variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "account_name" {
  type = string
}

variable "offer_type" {
  type = string
}

variable "kind" {
  type = string
}

variable "consistency_level" {
  type = string
}

variable "failover_priority" {
  type = number
}

variable "capabilities" {
  type = list(string)
}

variable "enable_free_tier" {
  type = bool
}

variable "tags" {
  type = map(string)
}