module "ecs_naive_api" {
    source = "./ecs_naive_api"
}

output "naive_api_url" {
    value = "http://${module.ecs_naive_api.elb_dns}/package/<package name>/<version>/"
}

output "naive_api_health_url" {
    value = "http://${module.ecs_naive_api.elb_dns}/health"
}
