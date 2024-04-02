#!/bin/bash
# This script takes in a URL and displays all HTTP methods the server will accept
curl -s -I "$1" | grep -i Allow | awk '{print $2}'

