#!/bin/bash

curl --include --request DELETE http://localhost:3000/sign-out/1 \
  --header "Authorization: Token token=fe258500871175e73135009de70b9504"
