#!/bin/bash
# This script takes in a URL, sends a GET request to the URL, and displays the body of the response
# Only displays body of a 200 status code response
curl -s -o /dev/null -w "%{http_code}" "$1" | grep -q "200" && curl -s "$1"

