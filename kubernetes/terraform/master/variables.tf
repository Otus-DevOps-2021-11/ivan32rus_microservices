variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable subnet_id{
  description = "Subnet"
}
variable master_disk_image {
  description = "Disk image for master"
  default = "master-base"
}

