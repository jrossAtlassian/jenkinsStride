# Jenkins [Stride](https://www.stride.com/) Notifications

* [Pipeline Project Script Examples](/pipeline/readme.md)
* [Freestyle Project Script Examples](/freestyle/readme.md)

## Pipeline example Jenkins files

* [Jenkinsfile](Jenkinsfile)
  * Requires [Crentials Plugin](https://plugins.jenkins.io/credentials)
  * Requires [Managed Scripts Plugin](https://plugins.jenkins.io/managed-scripts) 
  * Uses global scripts and securly stored credentials to post updates to a [Stride Conversation](https://developer.atlassian.com/cloud/stride/learning/conversations/)
* [Jenkinsfile.localFiles](Jenkinsfile.localFiles)
  * Requires [Crentials Plugin](https://plugins.jenkins.io/credentials)
  * Uses scripts stored in the projects source and securly stored credentials to post updates to a [Stride Conversation](https://developer.atlassian.com/cloud/stride/learning/conversations/)
* [Jenkinsfile.noCredentials](Jenkinsfile.localFiles)
  * Requires [Managed Scripts Plugin](https://plugins.jenkins.io/managed-scripts) 
  * Uses scripts stored globally in Jenkins with credentials embeeded in the script to post updates to a [Stride Conversation](https://developer.atlassian.com/cloud/stride/learning/conversations/)