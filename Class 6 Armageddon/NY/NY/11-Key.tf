
resource "tls_private_key" "TheLinuxBox" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "TheLinuxBox" {
  private_key_pem = tls_private_key.TheLinuxBox.private_key_pem
}

output "New_York_private_key" {
  value     = tls_private_key.TheLinuxBox.private_key_pem
  sensitive = true
}

output "New_York_public_key" {
  value = data.tls_public_key.TheLinuxBox.public_key_openssh
}