pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                 withCredentials([ credentialsId: 'STRIDE_CONVERSATION_URL', variable: 'STRIDE_CONVERSATION_URL']) {
                     withCredentials([credentialsId:'STRIDE_TOKEN', variable:'STRIDE_TOKEN']){
                    sh './.scripts/notifyStride.sh'
                 }}
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
}