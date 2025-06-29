# This is the resource that will trigger the packer image creation
resource "terraform_data" "odoo1" {


  connection {
    type     = "winrm"
    user     = "Administateur"
    password = "mot-de-passe"
    host     = "10.x.x.x"
    port     = 5985
    https    = false
    use_ntlm = true
  }


#provisioner "file" {
#    source      = "files/config.ps1"
#    destination = "c:/terraform/config.ps1"
#  }

  provisioner "remote-exec" {
    inline = [
      "PowerShell.exe -ExecutionPolicy Bypass c:\\Packer\\packer.ps1",
    ]
  }
}



