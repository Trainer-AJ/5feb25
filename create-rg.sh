#!/bin/bash

read "Enter Location: "  loc
read "Enter Name: " name

az group create -n $name -l $loc

name=mausi$RANDOM

for i in {1..5}
do 
    az storage account create -n "${name}sa${i}" -g $name -l $loc --sku Standard_LRS --kind StorageV2
done
