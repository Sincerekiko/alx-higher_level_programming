#!/bin/bash

# Check if the user has provided a URL
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Get the URL from the command line argument
URL=$1

# Send a request to the URL using curl, retrieve the content, and store it in a variable
response=$(curl -s "$URL")

# Get the size of the response body in bytes
size=$(echo -n "$response" | wc -c)

# Display the size of the body of the response in bytes
echo "$size"
