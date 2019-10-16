# Ex: TOKEN=tokengoeshere ID=idgoeshere sh curl-scripts/examples/show.sh

curl "http://localhost:4741/examples/${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
