#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send a request to the URL using curl and store the response body in a temporary file
response=$(curl -sI "$URL" | grep -i content-length | awk '{print $2}')

# Check if the response contains Content-Length header
if [ -n "$response" ]; then
    echo "Size of the body of the response: $response bytes"
else
    echo "Unable to retrieve the size of the body of the response."
fi

