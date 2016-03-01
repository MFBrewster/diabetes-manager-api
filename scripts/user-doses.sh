#!/bin/bash

curl --include --request GET http://localhost:3000/doses/1 \
  --header "Authorization: Token token=0b2b329e504ff0710b93cc45b91c9b0f"
