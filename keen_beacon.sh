#!/bin/bash

KEEN_API_KEY="PUT YOUR API KET HERE"

KEEN_PROJECT_ID="PUT YOUR PROJECT ID HERE"

KEEN_COLLECTION="PUT YOUR COLLECTION HERE"


beacon64=`base64 -w 0 data_beacon.json`

BEACON_URL="https://api.keen.io/3.0/projects/${KEEN_PROJECT_ID}/events/${KEEN_COLLECTION}?api_key=${KEEN_API_KEY}&data=${beacon64}"

echo $BEACON_URL

echo -e "\n"

HTML_IMG=`echo "<img src=\"${BEACON_URL}\"></img>"`


echo $HTML_IMG
