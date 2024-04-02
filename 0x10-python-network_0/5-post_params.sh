#!/bin/bash

# Check if the user has provided a URL argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Store the URL provided by the user
URL=$1

# Send a POST request to the URL with email and subject parameters, and display the body of the response
response=$(curl -s -X POST -d "email=test@gmail.com&subject=I%20will%20always%20be%20here%20for%20PLD" "$URL")
echo "$response"

