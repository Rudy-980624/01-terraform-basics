variable "iam_user_name_prefix" {
  type    = string #any: string, bool, list, map, number, set, object, tuple
  default = "my_iam_user"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  count = 3
  name  = "${var.iam_user_name_prefix}_${count.index}"
}
/* 
Take note, count can be changed and TF will apply changes
without destroying previous configurations.
This is useful for scaling resources up or down without losing existing configurations.
*/

