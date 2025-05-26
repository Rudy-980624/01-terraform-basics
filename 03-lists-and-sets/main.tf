variable "names" {
  default = ["alice", "bob", "charlie"]
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = toset(var.names)   
    name     = each.value
    # Convert the list to a set for unique values
    # Using for_each to create a user for each name in the set
}