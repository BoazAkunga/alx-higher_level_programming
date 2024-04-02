#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send a DELETE request to the URL using curl and display the body of the response
response=$(curl -s -X DELETE "$URL")
echo "$response"

