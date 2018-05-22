pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                    sh './.scripts/notifyStride.stage.sh'
                }          
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                //error("Build failed because of this and that..")
                withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                    sh './.scripts/notifyStride.stage.sh'
                }   
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                    sh './.scripts/notifyStride.stage.sh'
                }   
            }
        }
    }
    post{
        success{
            withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                sh './.scripts/notifyStride.success.sh'
            }  
        }
        failure{
            withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                sh './.scripts/notifyStride.failure.sh'
            }  
        }
    }
}