######################SAO PAULO################################
resource "tls_private_key" "Sao_Paulo_KP" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "Sao_Paulo_KP" {
  private_key_pem = tls_private_key.Sao_Paulo_KP.private_key_pem
}

output "Sao_Paulo_private_key" {
  value     = tls_private_key.Sao_Paulo_KP.private_key_pem
  sensitive = true
}

output "Sao_Paulo_public_key" {
  value = data.tls_public_key.Sao_Paulo_KP.public_key_openssh
}
