#!/bin/bash

# Check if the user has provided a URL
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
URL=$1

# Send a request to the URL using curl and store the response body in a variable
response=$(curl -sI "$URL" | grep -i Content-Length | awk '{print $2}')

# Display the size of the body of the response in bytes
echo "$response"
