# main.tf

# Declare the provider being used, in this case it's AWS.
# This provider supports setting the provider version, AWS credentials as well as the region.
# It can also pull credentials and the region to use from environment variables, which we have set, so we'll use those
terraform {
  required_version = "~>1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.20"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

# declare a resource stanza so we can create something, in this case a key pair
resource "aws_key_pair" "my_key_pair" {
  key_name   = "devint-${var.student_alias}"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCziJcgg6vF7WkuRhCso3XnQX8oZ/NXW2a+g3PJrVshJJb9rLsYk4oXEaUu3D2IcVRRcxffiG+I5sJvN7BtomxCZ5lr77xBpB0zs4QnnmtB9sFSHXre4GRQbMDxImyqgmcVcSDKH+bFfe1/km08UjDz/kUNtrFWVJiJAmFndbEK5b/j0OOChtQKUlT3+XkLhrD7ek7s1hpxuSoAYMCux7t/VeUy2y/SuLK86EaGM+yWSh5C4gKQ9DU2uC8zKDpZoXtDAXgkhiF7Ub/X0S3c1OAXD7RwPkFErz5quWi34uSYBIFzGxuX4EwzJ++fiDwKMtnnhlpHPhlfhGnYy+Gn/OkZxltwfkWeJv8jCv4lnjm6riFBHPpZJHwTtxs3jYxgLAPLy4Ijlt60o60KC71PzGddmOr3BxfVKKmp2YtA40l2iQZA65LpoPiCOpQfEw1BW7lhT8MNLA4SeBhL2nqb4CFYX5C6xUsc4kgvNBzJ/WGMxmUFAHjdEL/2ziXuOJSwkxdfbDnlJ7KshzEi912gpVO8lTrXnGOXdupS6WeGtuJzVh0YPAU8IMXm7CzqUSrfZ2KpFq3eth7Euba0zunEiGY0oF66kT3Kq4SI9cPF3rpg8rBz4DciitgWdz5+F9cG2xXhpFNoXZExP0oTYASkgg4GQVC+QibN1ERIMyAJxbiklQ==" # dws@developintelligence.com"
}
