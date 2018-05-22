set -u
set +x

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer '$STRIDE_TOKEN \
-d "{\"content\":[{\"attrs\":{\"collapsible\":true,\"context\":{\"icon\":{\"label\":\"Jenkins Build Server\",\"url\":\"https://jenkins.io/sites/default/files/jenkins_favicon.ico\"},\"text\":\"Jenkins Build Server - ${JOB_NAME} ${BUILD_DISPLAY_NAME} - BUILD FAILED\"},\"description\":{\"text\":\"Tag: ${BUILD_TAG}    Commit:${GIT_COMMIT}\"},\"details\":[{\"lozenge\":{\"appearance\":\"removed\",\"text\":\"BUILD FAILED\"}},{\"lozenge\":{\"appearance\":\"removed\",\"text\":\"${BRANCH_NAME}\"},\"title\":\"Branch\"},{\"lozenge\":{\"appearance\":\"removed\",\"text\":\"${BUILD_DISPLAY_NAME}\"},\"title\":\"Build Number\"}],\"link\":{\"url\":\"${RUN_DISPLAY_URL}\"},\"text\":\"${JOB_NAME} - BUILD FAILED\",\"title\":{\"text\":\"${JOB_NAME} - BUILD FAILED\",\"user\":{\"icon\":{\"url\":\"https://jenkins.io/images/angry-jenkins_128.png\",\"label\":\"BUILD FAILED\"}}}},\"type\":\"applicationCard\"}],\"type\":\"doc\",\"version\":1}" \
--url $STRIDE_CONVERSATION_URL