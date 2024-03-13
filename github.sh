#!/bin/bash

# Set your GitHub username and repository name
USERNAME=" Jayasankar"
REPO_NAME="jayasankargpt"

# Create a new repository using GitHub API
create_repo() {
  # Define the API endpoint
  API_URL="https://api.github.com/user/repos"
  
  # JSON payload with repository name
  PAYLOAD="{\"name\":\"$REPO_NAME\"}"
  
  # Send POST request to create repository
  curl -u "$USERNAME" -d "$PAYLOAD" "$API_URL"
}

# Call the function to create the repository
create_repo
