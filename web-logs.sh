#!/bin/bash
#cat web-logs-raw

while IFS= read -r line || [ -n "$line" ]; do
  if [[ $line == *"sample heroku/router"* ]]; then
    requestId=`sed 's/.*\(request_id=\([a-z0-9]*-\)\{4\}[a-z0-9]*\).*/\1/' <<< $line | cut -d "=" -f 2`

    temp=`sed 's/.*\(fwd=[^ ]\+\).*/\1/' <<< $line | cut -d "=" -f 2 | tr -d '"' | awk '{$1=$1};1'`

    if [ "$temp" == 'MASKED' ]; then
      echo "$requestId [M]"
    else
      echo "$requestId"
    fi
  fi
done <web-logs-raw
