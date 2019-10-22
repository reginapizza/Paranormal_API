curl "http://localhost:4741/encounters/${ID}" \
--include \
--request PATCH \
--header 'Content-Type: application/json' \
--header "Authorization: Token token=${TOKEN}" \
--data '{
  "encounter": {
    "date_of_encounter": "'"${DATE}"'",
    "time_of_encounter": "'"${TIME}"'",
    "location": "'"${LOCATION}"'",
    "weather": "'"${WEATHER}"'",
    "number_of_people": "'"${PEOPLE}"'",
    "wearing": "'"${WEARING}"'",
    "entity_type": "'"${ENTITYTYPE}"'",
    "entity_name": "'"${ENTITYNAME}"'",
    "disposition": "'"${DISPOSITION}"'",
    "appearance": "'"${APPEARANCE}"'",
    "encounter_description": "'"${EVENT}"'"
  }
}'
