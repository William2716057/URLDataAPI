#!/bin/bash

echo "Enter IP: "
read IP
#enter IP here
#IP="13.35.121.97"
#API endpoint
API_URL="http://ip-api.com/json/$IP"

#Fetch geolocation data
RESPONSE=$(curl -s $API_URL)

#echo "Full JSON response:"
#echo $RESPONSE

#parse JSON response to extract coordinates
LATITUDE=$(echo $RESPONSE | grep -o '"lat":[^,]*' | cut -d':' -f2)
LONGITUDE=$(echo $RESPONSE | grep -o '"lon":[^,]*' | cut -d':' -f2)
COUNTRY=$(echo $RESPONSE | grep -o '"country":"[^"]*"' | cut -d':' -f2 | tr -d '"')

#check if reponse contains lat and long
if [ -n "$LATITUDE" ] && [ -n "LONGITUDE" ]; then
	echo "Latitude = $LATITUDE, Longitude = $LONGITUDE"
	echo "$LATITUDE, $LONGITUDE"
	echo "Country: $COUNTRY"
else
	echo "Computer says no"
fi

