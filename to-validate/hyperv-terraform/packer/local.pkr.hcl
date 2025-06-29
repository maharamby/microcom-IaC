variable "host" {
    type = string
    default= "10.255.255.19"
}

variable "private_key" {
    type = string
    default = "/root/.ssh/id_rsa"
}

source "null" "remote" {
  ssh_host = var.host
  ssh_username = "Administrateur"
  ssh_private_key_file = var.private_key
  communicator = "ssh"
}

build {
  sources = ["sources.null.remote"]
  provisioner "powershell" {
      inline = [
        "cd c:",
        "ls"
    ]
  } 
}
