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
        stage('Run Test cases') {
            steps {
                echo 'Running pytest cases'
                script {
                    run_testcase()
                }
            }
        }
        stage('Build Code') {
            steps {
                echo 'Building Code'
                script {
                    build_code()
                }
            }

        }
    }
}

void run_testcase() {
    sh """
        python3 -m venv venv
        source venv/bin/activate
        pip install -r requirements.txt
        pytest test
    """
}
void build_code() {
    sh """
    echo ${WORKSPACE}
    sh CICD/build_code.sh
    """
}