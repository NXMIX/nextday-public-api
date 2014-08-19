#!/bin/sh
if [ -n "$1" ] && [ -n "$2" ]; then
    endpoint='http://test.nextday.im/api/calendar'
    url='/api/calendar'
    name=$1
    secret=$2
    date=$(date +'%Y-%m-%d %H:%M:%S')
    hash=$(md5 -q -s "$url&$name&$date&$secret")
    curl -H "Date: $date" -H "Authorization: $name:$hash" $endpoint
else
    echo "[name] and [secret] are required." >&2
    echo "e.g. './test.sh [name] [secret]'" >&2
fi