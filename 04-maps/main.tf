variable "users" {
  default = {
    alice : { country : "France", department : "Engineering" },
    bob : { country : "Germany", department : "Marketing" },
    charlie : { country : "Italy", department : "Sales" },
    dave : { country : "Spain", department : "Support" },
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  for_each = var.users

  name = each.key
  tags = {
    #country: each.value
    country : each.value.country
    department : each.value.department
  }
}