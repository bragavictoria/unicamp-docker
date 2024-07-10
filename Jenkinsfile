pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    def dockerImage = 'ola-unicamp'
                    docker.build(dockerImage, '-f Dockerfile .')
                }
            }
        }
        
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('ola-unicamp').run()
                }
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline executado com sucesso!'
        }
        failure {
            echo 'O Pipeline falhou. Para mais detalhes, verifique os logs.'
        }
    }
}
