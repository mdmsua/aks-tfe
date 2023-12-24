variable "workspaces" {
  type = list(string)
}
variable "token" {
  type      = string
  sensitive = true
}
