#!/usr/bin/env groovy

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                configFileProvider([configFile(fileId: 'notify_stride.stage', variable: 'NOTIFY_SCRIPT')]) {
                    withCredentials([usernamePassword(credentialsId: 'strideConversationToken', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh 'chmod +x $NOTIFY_SCRIPT && sh $NOTIFY_SCRIPT'
                    }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //error("Build failed because of this and that..") 
                configFileProvider([configFile(fileId: 'notify_stride.stage', variable: 'NOTIFY_SCRIPT')]) {
                    withCredentials([usernamePassword(credentialsId: 'strideConversationToken', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh 'chmod +x $NOTIFY_SCRIPT && sh $NOTIFY_SCRIPT'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                configFileProvider([configFile(fileId: 'notify_stride.stage', variable: 'NOTIFY_SCRIPT')]) {
                    withCredentials([usernamePassword(credentialsId: 'strideConversationToken', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh 'chmod +x $NOTIFY_SCRIPT && sh $NOTIFY_SCRIPT'
                    }
                }
            }
        }   
    }
    post{
        success{
            configFileProvider([configFile(fileId: 'notify_stride.success', variable: 'NOTIFY_SCRIPT')]) {
                withCredentials([usernamePassword(credentialsId: 'strideConversationToken', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                    sh 'chmod +x $NOTIFY_SCRIPT && sh $NOTIFY_SCRIPT'
                }
            }
        }
        failure{
            configFileProvider([configFile(fileId: 'notify_stride.failure', variable: 'NOTIFY_SCRIPT')]) {
                withCredentials([usernamePassword(credentialsId: 'strideConversationToken', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                    sh 'chmod +x $NOTIFY_SCRIPT && sh $NOTIFY_SCRIPT'
                }
            }
        }
    }
}
