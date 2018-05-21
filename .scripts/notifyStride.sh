set +x

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer $STRIDE_TOKEN' \
-d '{"body":{"version":1,"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"My first message!"}]}]}}' \
--url '$STRIDE_CONVERSATION_URL'