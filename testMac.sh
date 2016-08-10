#!/bin/sh
if [ -n "$1" ] && [ -n "$2" ]; then
    pathAndQuery="/api/calendar?from=20141001&to=20141003"
    endpoint="http://api.nextday.im$pathAndQuery"
    name=$1
    secret=$2
    date=$(date +'%Y-%m-%d %H:%M:%S')
    hash=$(md5 -q -s "$pathAndQuery&$name&$date&$secret")
    curl -H "Date: $date" -H "Authorization: $name:$hash" $endpoint
else
    echo "[name] and [secret] are required." >&2
    echo "e.g. './testMac.sh [name] [secret]'" >&2
fi