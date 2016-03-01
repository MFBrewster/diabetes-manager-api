#!/bin/bash

curl --include --request GET http://localhost:3000/prescriptions/1 \
  --header "Authorization: Token token=e76a4fde3ab740afc9a651099d267615"
