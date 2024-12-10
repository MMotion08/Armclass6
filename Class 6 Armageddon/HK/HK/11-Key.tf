########################HONG KONG################################ 

resource "tls_private_key" "HK_Key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

data "tls_public_key" "HK_Key" {
  private_key_pem = tls_private_key.HK_Key.private_key_pem
}

output "HK_private_key" {
  value     = tls_private_key.HK_Key.private_key_pem
  sensitive = true
}

output "HK_public_key" {
  value = data.tls_public_key.HK_Key.public_key_openssh
}

