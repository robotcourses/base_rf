pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                script {
                    // Limpa e faz o checkout do repositório
                    cleanWs()
                    checkout scm
                }
            }
        }

        stage('Build and Test') {
            steps {
                script {
                    // Ativa o ambiente virtual e instala as dependências
                    sh'''
                        docker-compose up
                    '''
                }
            }
        }
    }
}
