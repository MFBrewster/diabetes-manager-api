#

curl --include --request POST http://localhost:3000/doses \
  --header "Authorization: Token token=ab3a38dbf20b6ae047da21e930d37cbf" \
  --header "Content-Type: application/json" \
  --data '{
    "doses": {
      "label": "Evening Levemir",
      "size": "6",
      "time": "2000-01-01 20:30:01 UTC,",
      "user_id": "1",
      "medicine_id": "2"
    }
  }'
