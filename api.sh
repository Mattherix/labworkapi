#!/bin/bash
export API="https://api.opensensemap.org/"

if [ ! -f boxes.json ]; then
	curl -o boxes.json $API/boxes
fi

cat boxes.json | jq .[0].currentLocation.coordinates[0]
