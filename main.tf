
resource "random_id" "random" {
  byte_length = 4
}

resource "local_file" "file1" {
  content = var.string_1
  filename = "${path.module}/f1/string"
}

resource "local_file" "file2" {
  content = var.num_1
  filename = "${path.module}/f1/number"
}

resource "local_file" "file3" {
  content = var.l1[0]
  filename = "${path.module}/f2/list"
}

resource "local_file" "file4" {
  content = var.map_1.key3
  filename = "${path.module}/f2/map"
}

resource "local_file" "file5" {
  content = var.object_1.name
  filename = "${path.module}/f3/object"
}

resource "local_file" "file6"{
  content = var.bool_1
  filename = "${path.module}/f4/bool"
}

locals {
  string_local = var.string_1
  number_local = var.num_1
  list_local   = var.l1
  map_local    = var.map_1
  object_local = var.object_1
  bool_1=var.bool_1
}



resource "random_id" "server" {
  keepers = {
    # Generate a new id each time we switch to a new AMI id
    ami_id = var.ami_id
  }

  byte_length = 8
}