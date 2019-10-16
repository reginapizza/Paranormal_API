#!/bin/bash

curl "http://localhost:4741/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
