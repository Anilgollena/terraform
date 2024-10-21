#creating a file for variable
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
variable "subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "subnet1_cidr" {
  default = "10.0.2.0/24"
}
variable "subnet2_cidr" {
  default = "10.0.3.0/24"
}
variable "subnet3_cidr" {
  default = "10.0.4.0/24"
}
variable "subnet4_cidr" {
  default = "10.0.5.0/24"
}
variable "subnet5_cidr" {
  default = "10.0.6.0/24"
}
