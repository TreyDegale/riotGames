provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "awslightsail_container_service" "flask_app" {
  name = "flask-app"
  power = "nano"
  scale = 1
  tags = {
    version = "1.0.0"
  }
}

resource "awslightsail_container_service_deployment" "flask_app_deployment" {
  container_service_name = awslightsail_container_service.flask_app.name
  containers {
    image = "treydegale/flask_app:0.0.1"
    command = ["python", "scripts/app.py"]
    ports {
      port = 80
      protocol = "HTTP"
    }
  }
}