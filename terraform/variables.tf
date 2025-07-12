variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
  default     = "flaskapp-resource-group"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
  default     = "East US"
}

variable "aks_cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
  default     = "flaskapp-aks-cluster"
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the AKS cluster"
  default     = 2
}

variable "node_size" {
  type        = string
  description = "VM size for the AKS nodes"
  default     = "Standard_B2s"
}