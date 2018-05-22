set +x

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer '$STRIDE_TOKEN \
-d "{\"content\":[{\"attrs\":{\"collapsible\":true,\"context\":{\"icon\":{\"label\":\"Jenkins Build Server\",\"url\":\"https://jenkins.io/sites/default/files/jenkins_favicon.ico\"},\"text\":\"Jenkins Build Server - ${JOB_NAME} ${BUILD_DISPLAY_NAME} - STAGE: ${STAGE_NAME}\"},\"description\":{\"text\":\"Tag: ${BUILD_TAG}    Commit:${GIT_COMMIT}\"},\"details\":[{\"lozenge\":{\"appearance\":\"inprogress\",\"text\":\"${STAGE_NAME}\"}},{\"lozenge\":{\"appearance\":\"inprogress\",\"text\":\"${BRANCH_NAME}\"},\"title\":\"Branch\"},{\"lozenge\":{\"appearance\":\"inprogress\",\"text\":\"${BUILD_DISPLAY_NAME}\"},\"title\":\"Build Number\"}],\"link\":{\"url\":\"${RUN_DISPLAY_URL}\"},\"text\":\"${JOB_NAME} - STAGE: ${STAGE_NAME}\",\"title\":{\"text\":\"${JOB_NAME} - STAGE: ${STAGE_NAME}\",\"user\":{\"icon\":{\"url\":\"https://jenkins.io/sites/default/files/jenkins_favicon.ico\",\"label\":\"STAGE: ${STAGE_NAME}\"}}}},\"type\":\"applicationCard\"}],\"type\":\"doc\",\"version\":1}" \
--url $STRIDE_CONVERSATION_URL
