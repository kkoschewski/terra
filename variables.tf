variable "TF_VAR_IONOS_TOKEN" {
  description = "The IonosCloud API token"
  type        = string
  
}


variable "TF_VAR_AWS_ACCESS_KEY_ID" {
  description = "The AWS access key ID"
  type        = string

}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "The AWS secret access key"
  type        = string

}

variable "cluster_name" {
  description = "The name of the k8s cluster"
  type        = string
  default     = "OPS_Cluster"
}

variable "datacenter_name" {
  description = "The name of the datacenter"
  type        = string
  default     = "OPS_Datacenter"
}

variable "k8s_version" {
  description = "The k8s version"
  type        = string
  default     = "1.28.4"
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
  default     = "system-pool"
}

###
