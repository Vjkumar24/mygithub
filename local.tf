resource "local_file" "devops" {
filename = "/root/twsubham/vj.txt"
content = "And also I want to become a AWS Engineer who know handson services"
}

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "7477Ejjk**&&###$$$"
}

output "random-string" {
value = random_string.rand_str[*].result
}


resource "local_file" "variable" {
filename = var.filename
content = var.content
}

