#!/bin/sh
if [ -n "$1" ] && [ -n "$2" ]; then
    endpoint='http://api.nextday.im/api/calendar'
    url='/api/calendar'
    name=$1
    secret=$2
    date=$(date +'%Y-%m-%d %H:%M:%S')
    echo -n "$url&$name&$date&$secret" | md5sum | cut -d" " -f1 | { read hash; curl -H "Date: $date" -H "Authorization: $name:$hash" $endpoint; }
else
    echo "[name] and [secret] are required." >&2
    echo "e.g. './test.sh [name] [secret]'" >&2
fi