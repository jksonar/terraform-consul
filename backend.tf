terraform {
  backend "consul" {
    address      = "192.168.56.113:8500"
    scheme       = "http"
    path         = "terraform/state"
    lock         = true
    access_token = "26d48902-905e-ec83-9a29-e70a40558636"
  }
}