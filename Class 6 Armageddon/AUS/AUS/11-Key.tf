###################AUSTRALIA################################


resource "tls_private_key" "Australia_KP" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "Australia_KP" {
  private_key_pem = tls_private_key.Australia_KP.private_key_pem
}

output "Australia_private_key" {
  value     = tls_private_key.Australia_KP.private_key_pem
  sensitive = true
}

output "Australia_public_key" {
  value = data.tls_public_key.Australia_KP.public_key_openssh
}
