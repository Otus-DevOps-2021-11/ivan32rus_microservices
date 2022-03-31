resource "yandex_compute_instance" "master" {
  name = "master"

  labels = {
    tags = "master"
  }
  resources {
    core_fraction = 40
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id = var.master_disk_image
    }
   }
  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
  ssh-keys = "ubuntu:${file(var.public_key_path)}"
  }

  connection {
  type = "ssh"
  host = self.network_interface.0.nat_ip_address 
  user = "ubuntu"
  #agent = true
  # путь до приватного ключа
  private_key = "${file(var.private_key_path)}" 
  }
}


