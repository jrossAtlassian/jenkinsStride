set +x

curl -X POST \
-H 'Content-Type: application/json' \
-H 'Authorization: Bearer '$STRIDE_TOKEN \
-d '{"body":{"version":1,"type":"doc","content":[{"type":"paragraph","content":[{"type":"text","text":"'${CHANGE_AUTHOR}' Made a change"}]}]}}' \
--url $STRIDE_CONVERSATION_URL

# {
#     "content": [
#         {
#             "attrs": {
#                 "collapsible": true,
#                 "context": {
#                     "icon": {
#                         "label": "Jenkins Build Server",
#                         "url": "https://bit.ly/2ctIstd"
#                     },
#                     "text": "Jenkins Build Server - ${JOB_NAME} ${BUILD_DISPLAY_NAME} - ${STAGE_NAME}"
#                 },
#                 "description": {
#                     "text": "Tag: ${BUILD_TAG}    Commit:${GIT_COMMIT}"
#                 },
#                 "details": [
#                     {
#                         "lozenge": {
#                             "appearance": "inprogress",
#                             "text": "${BRANCH_NAME}"
#                         },
#                         "title": "Branch"
#                     },
#                     {
#                         "lozenge": {
#                             "appearance": "inprogress",
#                             "text": "${STAGE_NAME}"
#                         },
#                         "title": "Build Stage"
#                     },
#                     {
#                         "text": "${BUILD_DISPLAY_NAME}",
#                         "title": "Build Number"
#                     }
#                 ],
#                 "link": {
#                     "url": "${RUN_DISPLAY_URL}"
#                 },
#                 "text": "${CHANGE_AUTHOR}",
#                 "title": {
#                     "text": "${JOB_NAME}"
#                 }
#             },
#             "type": "applicationCard"
#         }
#     ],
#     "type": "doc",
#     "version": 1
# }




# {
#     "content": [
#         {
#             "attrs": {
#                 "collapsible": true,
#                 "context": {
#                     "icon": {
#                         "label": "Jenkins Build Server",
#                         "url": "https://bit.ly/2ctIstd"
#                     },
#                     "text": "Jenkins Build Server"
#                 },
#                 "description": {
#                     "text": "oooh da lolly what a day"
#                 },
#                 "details": [
#                     {
#                         "badge": {
#                             "appearance": "primary",
#                             "theme": "dark",
#                             "value": 8
#                         },
#                         "text": "bdg text",
#                         "title": "bdg title"
#                     },
#                     {
#                         "icon": {
#                             "label": "test",
#                             "url": "https://bit.ly/2ctIstd"
#                         },
#                         "text": "icon text",
#                         "title": "icon title"
#                     },{
# "title": "Branch",
# "text": "${BRANCH_NAME}"
# },
#                     {
#                         "lozenge": {
#                             "appearance": "inprogress",
#                             "text": "loz text"
#                         },
#                         "title": "loz title"
#                     }
#                 ],
#                 "link": {
#                     "url": "http://www.lolcats.com/"
#                 },
#                 "text": "${CHANGE_AUTHOR}",
#                 "title": {
#                     "text": "${JOB_NAME}"
#                 }
#             },
#             "type": "applicationCard"
#         }
#     ],
#     "type": "doc",
#     "version": 1
# }
