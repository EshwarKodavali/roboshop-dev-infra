variable "project" {
    default = "roboshop"
}

variable "env" {
    default = "dev"
}

variable "sg_names" {
  default = [   
         # databases
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        # frontend load balencer
        "frontend_alb",
        "backend_alb"
        ]
}