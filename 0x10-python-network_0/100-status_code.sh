#!/bin/bash

# This script sends a request to a URL passed as an argument and displays only the status code of the response

# Send a GET request to the specified URL and store the response headers in a temporary file
curl -s -o temp_headers.txt -D - "$1" > /dev/null

# Extract the status code from the first line of the response headers
status_code=$(head -n 1 temp_headers.txt | cut -d ' ' -f 2)

# Display the status code
echo "$status_code"

# Clean up temporary files
rm temp_headers.txt

