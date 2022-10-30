#!/bin/bash

# To initialize credentials in variables
. ./.env

# Login into azure account
az account set -s $subscription

# Create function app in azure 
# Remember to replace $appName depends on function project
az functionapp create --resource-group $resourceGroup --consumption-plan-location "$functionLocation" --runtime python --runtime-version 3.8 --functions-version 3 --name $appName --os-type linux --storage-account $storageAccount

echo "Function app is created"