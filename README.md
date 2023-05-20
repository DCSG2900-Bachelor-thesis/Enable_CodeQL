# Enable_CodeQL

## Basic Setup 

The script in this repository is specific for the groups use, however, below one can find the general syntax for enabling CodeQL.


#This command authenticates the user.
`gh auth login`

#This command enables CodeQL in GitHub. 
`gh api -X PATCH /repos/[USERNAME]/[NAME-OF-REPOSITORY]/code-scanning/default-setup -f state=configured`

#Monitor the changes
`gh api /repos/[USERNAME]/[NAME-OF-REPOSITORY]/actions/runs/4869392483 --jq '.status,.conclusion'`

#Checks if it was successful
`gh api /repos/[USERNAME]/[NAME-OF-REPOSITORY]/code-scanning/default-setup`
