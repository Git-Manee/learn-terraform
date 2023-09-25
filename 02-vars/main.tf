variable "fruit" {
  default = "apple"
}

variable "fruits" {
  default = [ "apple", "banana" ]
}

variable "fruit_price" {
  default = {
    apple = 20
    banana = 5
  }
}

output "fruit" {
  value = var.fruit
}