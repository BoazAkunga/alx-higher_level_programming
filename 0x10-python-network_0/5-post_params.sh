#!/bin/bash
# This script sends a POST request to the passed URL, including variables email with the value test@gmail.com and subject with the value I will always be here for PLD, and displays the body of the response
curl -s -X POST -d "email=test@gmail.com&subject=I will always be here for PLD" "$1"

