resource "null_resource" "fake_vpc" {
  triggers = {
    environment = var.environment
    uuid        = uuid()
  }
}

# A change to main.tf 
# A change
