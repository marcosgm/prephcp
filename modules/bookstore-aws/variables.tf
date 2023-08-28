variable "subnet_ids" {
  description = "Subnet IDs for the ECS cluster"
  type = list(string)
  default = ["subnet-39311d51", "subnet-4cc3ba36", "subnet-6450aa3b"]
}