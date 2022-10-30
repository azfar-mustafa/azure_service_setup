#!/bin/bash

# To initialize credentials in variables
. ./.env

# Login into azure account
az account set -s $subscription

# Create general purpose storage account
az storage account create --resource-group $resourceGroup --name $storageAccount --sku Standard_LRS

echo "Storage account is created"