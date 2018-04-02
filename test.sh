#!/bin/sh
if [ -n "$1" ] && [ -n "$2" ]; then
    pathAndQuery="/api/calendar?from=20141001&to=20141003"
    # Worked for both http and https
    endpoint="https://api.nextday.im$pathAndQuery"
    name=$1
    secret=$2
    date=$(date +'%Y-%m-%d %H:%M:%S')
    echo -n "$pathAndQuery&$name&$date&$secret" | md5sum | cut -d" " -f1 | { read hash; curl -H "X-ND-Date: $date" -H "Authorization: $name:$hash" $endpoint; }
else
    echo "[name] and [secret] are required." >&2
    echo "e.g. './test.sh [name] [secret]'" >&2
fi