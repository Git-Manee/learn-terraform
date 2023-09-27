resource "null_resource" "test" {
  provider = "local-exec"
    command = "echo ${var.input}"
}

variable "input" {}