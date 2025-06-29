# This is the resource that will trigger the packer image creation
resource "null_resource" "odoo3" {


#provisioner "file" {
#    source      = "files/config.ps1"
#    destination = "c:/terraform/config.ps1"
#  }

  provisioner "remote-exec" {
connection {
    type     = "ssh"
    user     = "Administateur"
    timeout  = "1m"
    host     = "10.x.x.x.x"
    port     = "22"
    private_key = file("/root/.ssh/id_rsa")
#    agent    = true
    target_platform = "windows"
#    script_path = "c:/windows/temp/terraform_%RAND%.ps1"
}

    inline = [
#      "echo hello"
      "powershell -ExecutionPolicy Bypass c:\\Packer\\packer.ps1"
    ]
  }
}



