#!/bin/bash


cd terraform

terraform init -input=false 
terraform plan -out=tfplan -input=false 
terraform apply -input=false tfplan
