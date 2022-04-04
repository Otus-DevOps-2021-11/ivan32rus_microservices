variable cloud_id{
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable public_key_path {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable image_id {
  description = "Disk image"
}
#variable subnet_id{
#  description = "Subnet"
#}
variable service_account_key_file{
  description = "key .json"
}
variable region_id{
  description = "The default is ru-central1"
}
variable master_disk_image {
  description = "Disk image for master"
  default = "master-base"
}
variable worker_disk_image {
  description = "Disk image for worker"
  default = "worker-base"
}
variable sub {
  description = "Subnet"
  default     = "192.168.10.0/24"
}
#variable envare {
#  description = "Environment for prefix"
#}
