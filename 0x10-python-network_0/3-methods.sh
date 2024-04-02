#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send an OPTIONS request to the URL using curl and display the Allow header
response=$(curl -s -i -X OPTIONS "$URL" | grep -i allow)
methods=$(echo "$response" | sed -n 's/Allow: \(.*\)/\1/p')

if [ -z "$methods" ]; then
    echo "Unable to retrieve allowed HTTP methods."
else
    echo "HTTP methods accepted by the server: $methods"
fi

