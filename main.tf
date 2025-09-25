terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = ">= 2.20.0"
    }
  }
  required_version = ">= 1.0.0"
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pull nginx image
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Run nginx container
resource "docker_container" "nginx" {
  name  = "nginx-container"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 8080
  }
}
