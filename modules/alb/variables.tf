# modules/alb/variables.tf
variable "vpc_id" {
  type = string
}

variable "public_subnet_ids" {
  type = list(string)
}