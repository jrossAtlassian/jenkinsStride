    pipeline {
        agent any
    
            stages {
                 configFileProvider(configFile(fileId: 'cfe95f0a-2659-408a-80b3-7764217d00b7', targetLocation: 'stride.notify.sh')]) {
                stage('Build') {
                    steps {
                        echo 'Building..'
                        withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                            sh 'stride.notify.sh'
                        }          
                    }
                }
                stage('Test') {
                    steps {
                        echo 'Testing..'
                        //error("Build failed because of this and that..")
                        withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                            sh 'stride.notify.sh'
                        }   
                    }
                }
                stage('Deploy') {
                    steps {
                        echo 'Deploying....'
                        withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                            sh 'stride.notify.sh'
                        }   
                    }
                }
                }
            }
            post{
                success{
                    configFileProvider([configFile(fileId: 'c410bda7-63cc-45a0-909c-10f803bd3e5c', targetLocation: 'stride.failure.sh'), configFile(fileId: 'cfe95f0a-2659-408a-80b3-7764217d00b7', targetLocation: 'stride.notify.sh'), configFile(fileId: '5baf8062-2632-4b9f-b700-792661a21323', targetLocation: 'stride.success.sh')]) {
                    withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh 'stride.success.sh'
                    }  
                    }
                }
                failure{
                    configFileProvider([configFile(fileId: 'c410bda7-63cc-45a0-909c-10f803bd3e5c', targetLocation: 'stride.failure.sh'), configFile(fileId: 'cfe95f0a-2659-408a-80b3-7764217d00b7', targetLocation: 'stride.notify.sh'), configFile(fileId: '5baf8062-2632-4b9f-b700-792661a21323', targetLocation: 'stride.success.sh')]) {
                    withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh 'stride.failure.sh'
                    }  
                    }
                }
            }
    }
