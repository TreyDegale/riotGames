provider "aws" {
  region  = "us-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_lightsail_container_service" "flask_app" {
  name = "Flask-app"
  power = "nano"
  scale = 1
  tags = {
    version = "1.0.0"
  }
}

resource "aws_lightsail_container_service_deployment_version" "flask_app_deployment" {
  container {
    container_name = "Flask-app"

    image = "treydegale/flask_app:0.0.2"
    
    ports = {
      80 = "HTTP"
    }
  }

  public_endpoint {
    container_name = "Flask-app"
    container_port = 80

    health_check {
      healthy_threshold   = 2
      unhealthy_threshold = 2
      timeout_seconds     = 2
      interval_seconds    = 5
      path                = "/"
      success_codes       = "200-499"
    }
  }

  service_name = aws_lightsail_container_service.flask_app.name
}