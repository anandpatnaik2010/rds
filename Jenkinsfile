pipeline{
    agent any
    environment {
	 
           AWS_ROLE = "AWSServiceRoleForRDS"
           AWS_REGION='us-east-1'
           AWS_ACCOUNT = '286429252326'
           STATE_BUCKET_PREFIX='subhampandamybucket'
    }
	
stages {
 stage('********************************************Create Snapshot & Restore********************************************') 
	 {
            steps {
                sh 'terraform init'
		        sh 'terraform plan -input=false -out=lm-mmx-tfplan.tfplan'
                sh 'terraform apply lm-mmx-tfplan.tfplan'
		    aws: [
                        roleAccount:"${AWS_ACCOUNT}",
                        role: "${AWS_ROLE}",
                        region: "${AWS_REGION}"
                    ]
            }  
        }
	    
	}	
}