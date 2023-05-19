
#!/bin/bash

#This command authenticates the user.
gh auth login

#This command enables CodeQL in GitHub. 
gh api -X PATCH /repos/ceelinab/juice-shop/code-scanning
/default-setup
-f state=configured

#Monitor the changes
gh api /repos/ceelinab/juice-shop/actions/runs/4869392483 
--jq '.status,.conclusion'

#Checks if it was successful
gh api /repos/ceelinab/juice-shop/code-scanning/default-setup
