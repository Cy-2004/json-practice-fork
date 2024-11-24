#!/bin/bash

curl -s "https://aviationweather.gov/api/data/metar?ids=KMCI&format=json&taf=false&hours=12&bbox=40%2C-90%2C45%2C-85" > aviation.json

cat aviation.json | jq -r .[1].receiptTime
cat aviation.json | jq -r .[2].receiptTime
cat aviation.json | jq -r .[3].receiptTime
cat aviation.json | jq -r .[4].receiptTime
cat aviation.json | jq -r .[5].receiptTime
cat aviation.json | jq -r .[6].receiptTime
