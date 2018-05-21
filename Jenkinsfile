pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                // withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                //     sh './.scripts/notifyStride.sh'
                // }          
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
    post{
        failure{
            withCredentials([string(credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL'), string(credentialsId: 'STRIDE_TOKEN', variable: 'STRIDE_TOKEN')]) {
                sh './.scripts/notifyStride.failure.sh'
            }  
        }
    }
}