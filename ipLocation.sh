#!/bin/bash

IP="13.35.121.97"
#API endpoint
API_URL="http://ip-api.com/json/$IP"

#Fetch geolocation data
RESPONSE=$(curl -s $API_URL)

#parse JSON response to extract coordinates
LATITUDE=$(echo $RESPONSE | grep -o '"lat":[^,]*' | cut -d':' -f2)
LONGITUDE=$(echo $RESPONSE | grep -o '"lon":[^,]*' | cut -d':' -f2)

#check if reponse contains lat and long
if [ -n "$LATITUDE" ] && [ -n "LONGITUDE" ]; then
	echo "Latitude = $LATITUDE, Longitude = $LONGITUDE"
	 echo "$LATITUDE, $LONGITUDE"
else
	echo "Computer says no"
fi

