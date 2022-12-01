#!/bin/bash
# This script will run the Terraform plan envvar.tf located under the plans/envvars folder and prints the output as json file.
# Before running this, please make sure to edit .env with with the relevant conjur provider attributes.
#============ Script ===============
source .env
cd ../plans/envvars || exit 1
printf "===== Running speculative execution plan =====\n\n"
terraform init
terraform plan -out=envvar-plan
printf "\n===== Result =====\n"
terraform show -json envvar-plan 
