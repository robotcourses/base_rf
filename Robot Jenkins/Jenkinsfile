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

        stage('Build') {
            steps {
                script {
                    // Ativa o ambiente virtual e instala as dependências
                    poetry install
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // Adiciona os comandos de deploy
                    poetry run python  './Robot Jenkins/app/app.py'
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    poetry run robot -d log './Robot Jenkins/regression_tests/Tests/Hello Jenkins.robot'
                }
            }
        }

    }
}
