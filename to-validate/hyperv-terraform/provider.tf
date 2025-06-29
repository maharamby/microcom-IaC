# Configure HyperV
provider "hyperv" {
  user            = "Administateur"
  password        = "mot-de-passe"
  host            = "10.x.x.x"
  port            = 5985
  https           = false
  insecure        = true
  use_ntlm        = true
  tls_server_name = ""
  cacert_path     = ""
  cert_path       = ""
  key_path        = ""
  timeout         = "30s"
}

