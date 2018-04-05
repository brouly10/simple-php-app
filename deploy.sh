#!/bin/bash

set -o errexit -o nounset

cd /home/ec2-user/terraformGT/vpc/simple-php-app/terraform/

terraform plan

terraform apply
