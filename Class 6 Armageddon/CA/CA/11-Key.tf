########################CALIFORNIA################################
resource "tls_private_key" "Nor_Cal" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "Nor_Cal" {
  private_key_pem = tls_private_key.Nor_Cal.private_key_pem
}

output "California_private_key" {
  value     = tls_private_key.Nor_Cal.private_key_pem
  sensitive = true
}

output "California_public_key" {
  value = data.tls_public_key.Nor_Cal.public_key_openssh
}
