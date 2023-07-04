variable "env" {
  default = "dev"
  type = string
  description = "Environment to deploy to"
}

variable "aws_region" {
  default = "us-east-1"
  type = string
  description = "AWS Region to deploy to"
}

variable "container_app" {
  default = "shhh"
  type = string
  description = "Container Name"
}

variable "container_port" {
  default = 5000
  type = number
  description = "Container Port"
}

variable "container_image_path" {
  default = "https://hub.docker.com/_/alpine"
  type = string
  description = "Alpine Linux"
}