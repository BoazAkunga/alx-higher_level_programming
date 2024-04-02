#!/bin/bash

# This script sends a JSON POST request to a URL passed as the first argument, using the contents of a file passed as the second argument as the body of the request, and displays the body of the response

# Check if the file exists
if [ ! -f "$2" ]; then
    echo "File not found: $2"
    exit 1
fi

# Send a POST request with the contents of the file as the body, and store the response in a temporary file
response=$(curl -s -X POST -d @"$2" -H "Content-Type: application/json" "$1")

# Check if the response contains "Valid JSON"
if [[ $response == *"Valid JSON"* ]]; then
    echo "Valid JSON"
else
    echo "Not a valid JSON"
fi

