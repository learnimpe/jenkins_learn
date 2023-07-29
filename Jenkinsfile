pipeline {
    agent any
    options {
        skipDefaultCheckout(true)
    }
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        stage('Build Code'){
            steps {
                echo 'Building Code'
                script {
                    build_code()
                }
            }

        }
    }
}

void build_code() {
    sh """
    echo 'workspace'
    echo ${WORKSPACE}
    """
}