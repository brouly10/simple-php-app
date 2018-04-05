#!/bin/bash

set -o errexit -o nounset

cd terraform
terraform taint

terraform plan

terraform apply
