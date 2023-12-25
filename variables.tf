variable "workspaces" {
  type = map(set(string))
}
variable "token" {
  type      = string
  sensitive = true
}
