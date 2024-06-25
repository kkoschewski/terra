variable "IONOS_TOKEN" {
  description = "The IonosCloud API token"
  type        = string
  default     = "eyJ0eXAiOiJKV1QiLCJraWQiOiIwNWMwNjI4Ni05MTZkLTRkMDctYjM5NS05YWE2NWJmYjVjMmMiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJNYXRlcm5hIEluZm9ybWF0aW9uICYgQ29tbXVuaWNhdGlvbnMgU0UiLCJpYXQiOjE3MTkyMTU2ODQsImNsaWVudCI6IlVTRVIiLCJpZGVudGl0eSI6eyJ1dWlkIjoiY2I2MDI2MDctNWM1OS00N2U1LWI1M2ItYTViMjRiMTMzOWY1IiwicHJpdmlsZWdlcyI6WyJEQVRBX0NFTlRFUl9DUkVBVEUiLCJTTkFQU0hPVF9DUkVBVEUiLCJJUF9CTE9DS19SRVNFUlZFIiwiTUFOQUdFX0RBVEFQTEFURk9STSIsIkFDQ0VTU19BQ1RJVklUWV9MT0ciLCJQQ0NfQ1JFQVRFIiwiQUNDRVNTX1MzX09CSkVDVF9TVE9SQUdFIiwiQkFDS1VQX1VOSVRfQ1JFQVRFIiwiQ1JFQVRFX0lOVEVSTkVUX0FDQ0VTUyIsIks4U19DTFVTVEVSX0NSRUFURSIsIkZMT1dfTE9HX0NSRUFURSIsIkFDQ0VTU19BTkRfTUFOQUdFX01PTklUT1JJTkciLCJBQ0NFU1NfQU5EX01BTkFHRV9DRVJUSUZJQ0FURVMiLCJBQ0NFU1NfQU5EX01BTkFHRV9MT0dHSU5HIiwiTUFOQUdFX0RCQUFTIiwiQUNDRVNTX0FORF9NQU5BR0VfRE5TIiwiTUFOQUdFX1JFR0lTVFJZIl0sImlzUGFyZW50IjpmYWxzZSwiY29udHJhY3ROdW1iZXIiOjMyNjg0NTcyLCJyb2xlIjoiYWRtaW4iLCJyZWdEb21haW4iOiJpb25vcy5kZSIsInJlc2VsbGVySWQiOjEyMDI3OTY4fSwiZXhwIjoxNzUwNzUxNjg0fQ.hv1Z2RVnMW3yRo3WqP9gQ8oLeMDjRy1sGMoPepWJYruSYNb0S4DwUTtFtXbHCjRkucAogcZCjoH_J_2CGGcO8Fwqa4fo-Oa2pleXqJxw8pRQvWkkcjTY4nfsbLEFMm4Y7XOcsalLBETM9Pj90Phy3XeQ4STAWf4feeN6t9mwniGSAIqFoRUYKKJOuWVAE_UKO1Etm9MNL1VXWqvOYp4jwCYqVetCbq6TkIW7QU8lr5u2sLpgQooGjPOC_PbZ9KLS24WZsjjCQNmuVamtftw6SA7cZoyM73y2a-S3-XclxZwKlpeZUvwcmSGFZSL0jRYNKp6Hrbm5mwRI1ZBCA7DWNA"
}


variable "AWS_ACCESS_KEY_ID" {
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
