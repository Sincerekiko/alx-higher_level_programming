#!/bin/bash

# Check if a URL argument is provided
if [ -z "$1" ]; then
  echo "Error: Please provide a URL as an argument."
  exit 1
fi

# Send request to URL using curl with silent mode (-s) 
# and store the response in a variable
response=$(curl -s "$1")

# Check if the request was successful (exit code 0)
if [ $? -eq 0 ]; then
  # Extract the Content-Length header using grep
  content_length=$(echo "$response" | grep -iE '^Content-Length:' | cut -d: -f2 | tr -d ' ')
  
  # Check if Content-Length is found
  if [ -z "$content_length" ]; then
    echo "Warning: Content-Length header not found in response."
  else
    echo "$content_length"
  fi
else
  echo "Error: Failed to retrieve response from URL."
fi
