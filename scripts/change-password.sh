#!/bin/bash

curl --include --request PATCH http://localhost:3000/change-password/1 \
  --header "Authorization: Token token=fe258500871175e73135009de70b9504" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "asdf",
      "new": "1234"
    }
  }'
