#!/bin/bash

curl --include --request PATCH http://localhost:3000/doses/2 \
  --header "Authorization: Token token=ab3a38dbf20b6ae047da21e930d37cbf" \
  --header "Content-Type: application/json" \
  --data '{
      "doses": {
        "size": "16"
      }
  }'
