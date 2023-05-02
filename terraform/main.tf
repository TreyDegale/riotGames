provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_lightsail_container_service" "flask_app" {
  name = "flask-app"
  power = "nano"
  scale = 1
  tags = {
    version = "1.0.0"
  }
}

resource "aws_lightsail_container_service_deployment_version" "flask_app_deployment" {
  container {
    container_name = "flask-app"

    image = "treydegale/flask_app:0.0.2"
    
    ports = {
      80 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "flask-app"
    container_port = 80
  }

  service_name = aws_lightsail_container_service.flask_app.name
}