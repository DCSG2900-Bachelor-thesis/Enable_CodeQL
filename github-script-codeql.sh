#!/bin/bash

gh auth login

gh api -X PATCH /repos/ceelinab/juice-shop/code-scanning/default-setup -f state=configured


gh api /repos/ceelinab/juice-shop/actions/runs/4869392483 --jq '.status, 
.conclusion' 

#Checks if it was successful 
gh api /repos/ceelinab/juice-shop/code-scanning/default-setup

gh api -X PUT /repos/ceelinab/juice-shop/vulnerability-alerts
