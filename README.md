# IP Geolocation Script
A Bash script that fetches and displays geolocation information for an IP address using the IP-API service.

## Features
- Retrieves latitude and longitude of the IP address
- Displays country, region, city, timezone, ISP, and organization information
- Simple and easy-to-use command line interface

## Prerequisites
- Bash shell
- curl command-line tool

## Usage
1. Clone the repository or download the script file.
```
git clone https://github.com/William2716057/URLDataAPI.git
```
2. Make script executable
```
chmod +x ipLocation.sh
```
3. Run the script
4. Enter IP address when prompted
5. The script will output the geolocation information of the provided IP address.

# Example
```
$ ./ipLocation.sh
Enter IP: 8.8.8.8
Latitude = 37.751, Longitude = -97.822
37.751, -97.822
Country: United States
Region: California
City: Mountain View
Timezone: America/Los_Angeles
ISP: Google LLC
Organisation: Google LLC
```
