resource "null_resource" "secret_folder" {
  provisioner "local-exec" {
    command = "mkdir -p /home/brayest/secret"
  }
}

resource "null_resource" "token" {
  provisioner "local-exec" {
    command = "echo ${var.token} >> /home/brayest/secret/token"
  }
}
