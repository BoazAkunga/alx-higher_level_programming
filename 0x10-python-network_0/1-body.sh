#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send a GET request to the URL using curl and store the response body in a variable
response=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
if [ "$response" -eq 200 ]; then
    curl -s "$URL"
else
    echo "Response status code is not 200. Exiting."
fi

