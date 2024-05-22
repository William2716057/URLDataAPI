#!/bin/bash

echo "Enter IP: "
read IP
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
REGION=$(echo $RESPONSE | grep -o '"regionName":"[^"]*"' | cut -d':' -f2 | tr -d '"')
CITY=$(echo $RESPONSE | grep -o '"city":"[^"]*"' | cut -d':' -f2 | tr -d '"')
TIMEZONE=$(echo $RESPONSE | grep -o '"timezone":"[^"]*"' | cut -d':' -f2 | tr -d '"')
ISP=$(echo $RESPONSE | grep -o '"isp":"[^"]*"' | cut -d':' -f2 | tr -d '"')
ORG=$(echo $RESPONSE | grep -o '"org":"[^"]*"' | cut -d':' -f2 | tr -d '"')

#check if reponse contains lat and long
if [ -n "$LATITUDE" ] && [ -n "LONGITUDE" ]; then
	echo "Latitude = $LATITUDE, Longitude = $LONGITUDE"
	echo "$LATITUDE, $LONGITUDE"
	echo "Country: $COUNTRY"
	echo "Region: $REGION"
	echo "City: $CITY"
	echo "Timezone: $TIMEZONE"
	echo "ISP: $ISP"
	echo "Organisation: $ORG"
else
	echo "Computer says no"
fi

