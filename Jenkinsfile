pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                configFileProvider([configFile(fileId: 'notify_stride.failure', variable: 'NOTIFY_SCRIPT')]) {
                    withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                        sh '$NOTIFY_SCRIPT'
                    }
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //error("Build failed because of this and that..") 
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'

            }
        }   
    }
    post{
        success{
            withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                sh '.scripts/notifyStride.success.sh'
            }  
        }
        failure{
            withCredentials([usernamePassword(credentialsId: 'e6c1fed9-dc2d-4e5d-ad1d-04e95722cabe', passwordVariable: 'STRIDE_TOKEN', usernameVariable: 'STRIDE_CONVERSATION_URL')]) {
                sh '.scripts/notifyStride.failure.sh'
            }  
        }
    }
}
