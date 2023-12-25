variable "project" {
  type = object({
    id         = string
    name       = string
    workspaces = set(string)
  })
}
