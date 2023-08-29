resource "local_file" "concept" {
filename = "/root/variable_concept/mygithub/map.txt"
content = var.content_map["content1"]
}

resource "local_file" "concept1" {
filename = var.filename
content = var.content_map["content2"]
}
