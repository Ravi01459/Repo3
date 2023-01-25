variable "rgname" {
  default     = "RG2"
  type        = string
  description = "this is RG name"
}
variable "loc" {
  default     = "East US"
  type        = string
  description = "this is RG Location"
}
variable "Vnetname" {
  default     = "VNET2"
  type        = string
  description = "this is disk name"

}
variable "address_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}
variable "Subnetaddress" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]

}

variable "Subnetname" {
  type    = list(any)
  default = ["subnet1", "subnet2", "subnet3"]

}
variable "tags" {
  type = map(any)
  default = {
    environment = "Production"
  }

}
