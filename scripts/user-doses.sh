#!/bin/bash

curl --include --request GET http://localhost:3000/doses/1 \
  --header "Authorization: Token token=0671b8315841addc745f4317f96efe38"
