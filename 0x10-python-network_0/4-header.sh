#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send a GET request to the URL with the X-School-User-Id header set to 98, and display the body of the response
response=$(curl -s -H "X-School-User-Id: 98" "$URL")
echo "$response"

