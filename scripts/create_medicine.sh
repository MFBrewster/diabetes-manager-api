#

curl --include --request POST http://localhost:3000/medicines \
  --header "Authorization: Token token=ab3a38dbf20b6ae047da21e930d37cbf" \
  --header "Content-Type: application/json" \
  --data '{
    "medicines": {
      "name": "Jesus",
      "unit_name": "cc",
      "notes": "qwerty"
    }
  }'
