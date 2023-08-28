module "ecs" {
  source = "terraform-aws-modules/ecs/aws"

  cluster_name = "ecs-bookstore"
  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = 100
      }
    }
  }

  services = {
    bookstore = {
      cpu    = 1024
      memory = 4096
      # Container definition(s)
      container_definitions = {
        bookstore-webserver = {
          cpu       = 512
          memory    = 1024
          essential = true
          image     = "prephcpregistry.azurecr.io/prephcr/bookstore-webserver:v1"
          port_mappings = [
            {
              name          = "bookstore-webserver"
              containerPort = 8080
              protocol      = "tcp"
            }
          ]
          environment = [
            {"name": "bookstore_title", "value": "AWS Bookstore"}
          ]
        }
      }
      assign_public_ip = true
      subnet_ids = var.subnet_ids
      security_group_rules = {
        ingress_8080 = {
          type                     = "ingress"
          from_port                = 8080
          to_port                  = 8080
          protocol                 = "tcp"
          description              = "Service port"
          cidr_blocks              = ["0.0.0.0/0"]
        }
        egress_all = {
          type        = "egress"
          from_port   = 0
          to_port     = 0
          protocol    = "-1"
          cidr_blocks = ["0.0.0.0/0"]
        }
      }
    }
  }
  tags = {
    Project     = "Bookstore"
  }
}