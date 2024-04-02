#!/bin/bash

# This script makes a request to 0.0.0.0:5000/catch_me causing the server to respond with a message containing "You got me!" in the body of the response

# Send a PUT request with a custom header that triggers the response
curl -s --location --request PUT 0.0.0.0:5000/catch_me --data "user_id=98" --header "Origin: HolbertonSchool"

