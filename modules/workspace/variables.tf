variable "workspaces" {
  type = set(string)
}

variable "project" {
  type = object({
    id   = string
    name = string
  })
}
