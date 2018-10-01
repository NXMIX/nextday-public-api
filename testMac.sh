# ./testMac.sh yourId yourSecret | jq '(.result)| keys'
#!/bin/sh
if [ -n "$1" ] && [ -n "$2" ]; then
    # pathAndQuery="/api/calendar?from=20141001&to=20141003"
    pathAndQuery="/api/calendar?from=20161230&to=20161230"
    # Worked for both http and https
    endpoint="https://api.nextday.im$pathAndQuery"
    name=$1
    secret=$2
    TZ='Asia/Shanghai'
    date=$(date +'%Y-%m-%d %H:%M:%S')
    hash=$(md5 -q -s "$pathAndQuery&$name&$date&$secret")
    curl --tlsv1.2 -H "X-ND-Date: $date" -H "Authorization: $name:$hash" $endpoint
else
    echo "[name] and [secret] are required." >&2
    echo "e.g. './testMac.sh [name] [secret]'" >&2
fi