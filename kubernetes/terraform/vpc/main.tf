resource "yandex_vpc_network" "network" {
  name = "network"
}

resource "yandex_vpc_subnet" "subnet" {
  name           = "subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.network.id}"
  v4_cidr_blocks = [var.sub]
}
