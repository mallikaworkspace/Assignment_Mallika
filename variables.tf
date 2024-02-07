
variable "num_1" {
  type    = number
  default = 569856985
}

variable "l1" {
  type    = list
  default = ["apple", "mango", "banana"]
}

variable "object_1" {
  type = object({
    name    = string
    age     = number
    address = string
  })
  default = {
    name    = "Mallika Gandhi"
    age     = 22
    address = "Chandigarh"
  }
}

variable "string_1" {
  type    = string
  default = "Hii class"
}
variable "bool_1" {
  type = bool
  default = true
}

variable "map_1" {
  type = map(string)
  default = {
    key1 = "Plants"
    key3 = "Tree"
  }
}

variable "ami_id" {
    type = string
}