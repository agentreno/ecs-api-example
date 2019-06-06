# ecs-api-example

## Description

An example of hosting an API on ECS Fargate fronted by a load balancer.

## Getting started

1. Create a `terraform.tfvars` in the root with the following format:

```
profile = "<name of AWS credentials profile to use>"
```

Run `terraform init` and `terraform apply`. The terraform run will finish with
an output that includes the load balancer external URL. Visit the `/health`
endpoint to get a quick indication that the application is running.

ECS Fargate can take a little while to start the 'task' (container) so you may
need to be patient and check the ECS dashboard.

## Example API

It's a Node Express API that provides a software dependency tree for a given
npm package and version. It can use a cache if the `cache_endpoint` parameter
is provided to the `ecs_naive_api` terraform module.
