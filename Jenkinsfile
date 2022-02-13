pipeline {
    agent any
    environment {
	 
           AWS_ROLE = "lm-mmx-preprod-cicd-jenkins"
           AWS_REGION='us-west-2'
           AWS_ACCOUNT = '761666749192'
           AWS_ENVIRONMENT = "preprod"
           STACK_NAME = "test"
	   APP_NAME = 'lm-dbrefresh-core-dni'
	   STATE_BUCKET_PREFIX='lm-dbrefresh-core-dni'
    }
    
    tools {
        terraform 'terraform'
    }
    stages {
        stage ("checkout from GIT") {
            steps {
                git branch: 'main', url: 'https://github.com/subhampanda/CI-CD.git'
            }
        }
        stage ("terraform init") {
            steps {
                sh 'terraform init'
            }
        }
        stage ("terraform fmt") {
            steps {
                sh 'terraform fmt'
            }
        }
        stage ("terraform validate") {
            steps {
                sh 'terraform validate'
            }
        }
        stage ("terrafrom plan") {
            steps {
                sh 'terraform plan '
            }
        }
        stage ("terraform apply") {
            steps {
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
